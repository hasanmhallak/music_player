import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

/// A service class for handling file operations such as picking and copying files.
///
/// This class utilizes the FilePicker package to select files and then perform
/// operations on them like copying to a specified directory.
class FilesService {
  /// The FilePicker instance used for picking files.
  final FilePicker picker;

  /// Constructs a FilesService with the given FilePicker.
  FilesService(this.picker);

  /// Picks a single file and returns its data.
  ///
  /// This method opens the file picker interface to allow the user to
  /// select a single file.
  /// It returns a MultiFileData object even for a single file for
  /// consistency in data structure.
  ///
  /// Returns `MultiFileData` object containing information about the
  /// picked file.
  /// If no file is picked, an empty `MultiFileData` object is returned.
  Future<MultiFileData> pickFile() async {
    final result = await picker.pickFiles();

    if (result == null || result.files.isEmpty) {
      return MultiFileData.empty();
    }

    final file = result.files.first;

    return MultiFileData(
      filesCount: 1,
      totalSize: file.size,
      hasFiles: true,
      files: [
        SingleFileData(
          path: file.path,
          name: file.name,
          size: file.size,
        ),
      ],
    );
  }

  /// Picks multiple files and returns their data.
  ///
  /// This method opens the file picker interface to allow the user to
  /// select multiple files.
  /// It compiles the details of all selected files into a MultiFileData object.
  ///
  /// Returns `MultiFileData` object containing information about the
  /// picked file.
  /// If no file is picked, an empty `MultiFileData` object is returned.
  Future<MultiFileData> pickMultiFiles() async {
    final result = await picker.pickFiles(allowMultiple: true);
    if (result == null || result.files.isEmpty) {
      return MultiFileData.empty();
    }

    final filesCount = result.count;
    int totalSize = 0;
    final pickedFiles = <SingleFileData>[];

    for (int i = 0; i < filesCount; i++) {
      final file = result.files[i];
      totalSize += file.size;
      pickedFiles.add(
        SingleFileData(
          path: file.path,
          name: file.name,
          size: file.size,
        ),
      );
    }

    return MultiFileData(
      filesCount: filesCount,
      totalSize: totalSize,
      hasFiles: true,
      files: pickedFiles,
    );
  }

  /// Copies files to a specified directory and optionally reports
  /// progress and errors.
  ///
  /// This method copies each file from the list provided in
  /// `MultiFileData` to the specified `destinationDirectory`.
  /// Progress and errors during the copy process can be monitored
  /// through the optional `onProgress` and `onError` callbacks.
  ///
  /// The [files] must contains the list of files to be copied.
  ///
  /// The [destinationDirectory] is The directory path where the files will
  /// be copied to.
  ///
  /// The [onProgress] callback, if provided, is called with the current
  /// progress percentage [0 - 100].
  ///
  /// The [onError] callback, if provided, is called with the error and
  /// stack trace.
  Future<void> copyFiles({
    required final MultiFileData files,
    required final String destinationDirectory,
    void Function(int progress)? onProgress,
    Function? onError,
  }) async {
    final filesCount = files.filesCount;
    assert(filesCount != 0, 'Cannot copy an empty list of files');

    int writtenBytes = 0;
    int progress = 0;
    // insure to update progress with the 0 value before awaiting.
    onProgress?.call(progress);

    for (final file in files.files) {
      try {
        final sourceFile = File(file.path!);
        final sourceStream = sourceFile.openRead();

        final targetFile = File('$destinationDirectory/${file.name}');
        final destinationSink = targetFile.openWrite();

        // Skipping progress calculation if no onProgress callback is provided
        if (onProgress == null) {
          await destinationSink.addStream(sourceStream);
        } else {
          await for (final chunk in sourceStream) {
            destinationSink.add(chunk);

            final chunkSize = chunk.length;
            writtenBytes += chunkSize;
            final newProgress = (writtenBytes / files.totalSize * 100).toInt();
            if (newProgress != progress) {
              progress = newProgress;
              onProgress(progress);
            }
          }
        }

        await destinationSink.flush();
        await destinationSink.close();
      } catch (e, s) {
        if (onError == null) rethrow;
        onError.call(e, s);
        break;
      }
    }
  }
}

/// Represents a single file that has been selected by the user.
///
/// This class encapsulates essential details about a file, such
/// as its name, size, and path.
@immutable
class SingleFileData {
  /// Creates a [SingleFileData] instance.
  ///
  /// The [name] parameter indicates the name of the file including
  /// its file extension.
  ///
  /// The [size] parameter represents the size of the file in bytes.
  ///
  /// The [path] parameter is the absolute path to the file.
  /// Note that on web platforms, this path is always `null` due to
  /// browser security restrictions.
  const SingleFileData({
    required this.name,
    required this.size,
    this.path,
  });

  /// The absolute path for a cached copy of this file. It can be used to create a
  /// file instance with a descriptor for the given path.
  /// ```
  /// final File myFile = File(pickedFile.path);
  /// ```
  /// On web this is always `null`.
  /// Read more about it [here](https://github.com/miguelpruivo/flutter_file_picker/wiki/FAQ)
  final String? path;

  /// File name including its extension.
  final String name;

  /// The file size in bytes. Defaults to `0` if the file size
  /// could not be determined.
  final int size;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SingleFileData &&
        other.path == path &&
        other.name == name &&
        other.size == size;
  }

  @override
  int get hashCode {
    return path.hashCode ^ name.hashCode ^ size.hashCode;
  }

  @override
  String toString() {
    return 'SingleFileData(path: $path, name: $name, size: $size)';
  }

  /// Creates a copy of this [SingleFileData] with the specified
  /// properties overridden.
  SingleFileData copyWith({
    String? path,
    String? name,
    int? size,
  }) {
    return SingleFileData(
      path: path ?? this.path,
      name: name ?? this.name,
      size: size ?? this.size,
    );
  }
}

/// Represents the data for a selection of multiple files.
///
/// This class is used to aggregate details about multiple files
/// that have been selected.
///
/// It includes the total number of files, their cumulative size,
/// and a list of [SingleFileData] instances representing each
/// individual file.
@immutable
class MultiFileData {
  /// Creates a [MultiFileData] instance.
  ///
  ///
  /// The [filesCount] parameter represents the total number of files
  /// selected.
  ///
  /// The [totalSize] parameter indicates the combined size of all
  /// selected files in bytes.
  ///
  /// The [hasFiles] parameter is a boolean indicating whether any
  /// files have been selected.
  ///
  /// The [files] parameter is a list of [SingleFileData] instances,
  /// each representing a selected file.
  const MultiFileData({
    required this.filesCount,
    required this.totalSize,
    required this.hasFiles,
    required this.files,
  });

  /// Total count of the files.
  final int filesCount;

  /// Total size of the files.
  final int totalSize;

  /// Whether this instance has files or not.
  final bool hasFiles;

  final List<SingleFileData> files;

  factory MultiFileData.empty() {
    return const MultiFileData(
      filesCount: 0,
      totalSize: 0,
      hasFiles: false,
      files: [],
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MultiFileData &&
        other.filesCount == filesCount &&
        other.totalSize == totalSize &&
        other.hasFiles == hasFiles &&
        listEquals(other.files, files);
  }

  @override
  int get hashCode {
    return filesCount.hashCode ^
        totalSize.hashCode ^
        hasFiles.hashCode ^
        files.hashCode;
  }

  @override
  String toString() {
    return 'MultiFileData(filesCount: $filesCount, totalSize: $totalSize, hasFiles: $hasFiles, files: $files)';
  }

  /// Creates a copy of this [MultiFileData] with the specified
  /// properties overridden.
  MultiFileData copyWith({
    int? filesCount,
    int? totalSize,
    bool? hasFiles,
    List<SingleFileData>? files,
  }) {
    return MultiFileData(
      filesCount: filesCount ?? this.filesCount,
      totalSize: totalSize ?? this.totalSize,
      hasFiles: hasFiles ?? this.hasFiles,
      files: files ?? this.files,
    );
  }
}
