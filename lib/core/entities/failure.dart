import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// A union class representing different types of failures that can occur in the application.
///
/// The `Failure` class is used to handle and convey various error scenarios that may
/// arise during the execution of an application. It employs the Freezed package to define
/// different failure types as subclasses, making it easy to pattern-match and handle specific
/// failure cases.
///
/// Example usage:
/// ```dart
/// final failure = Failure.server(
///   message: 'Server error occurred',
///   statusCode: 500,
/// );
///
/// failure.when(
///   server: (message, statusCode) {
///     print('Server Error: $message');
///     print('Status Code: $statusCode');
///   },
///   storage: (message, statusCode) {
///     print('Storage Error: $message');
///     print('Status Code: $statusCode');
///   },
///   noConnection: (message, statusCode) {
///     print('No Connection Error: $message');
///     print('Status Code: $statusCode');
///   },
///   raw: (rawError, statusCode) {
///     print('Raw Error: $rawError');
///     print('Status Code: $statusCode');
///   },
/// );
/// ```
///
/// The `Failure` class provides various failure types, including:
/// - `server`: Represents server-related failures.
/// - `storage`: Represents storage-related failures.
/// - `noConnection`: Represents failures due to the absence of an internet connection.
/// - `raw`: Represents other types of raw failures with custom error data.
@freezed
class Failure with _$Failure {
  const Failure._();

  /// Represents a failure related to server interactions.
  const factory Failure.server({
    required String message,
    required int statusCode,
  }) = _ServerFailure;

  /// Represents a failure related to storage operations.
  const factory Failure.storage({
    required String message,
    required int statusCode,
  }) = _StorageFailure;

  /// Represents a failure due to the absence of an internet connection.
  const factory Failure.noConnection({
    required String message,
    required int statusCode,
  }) = _NoConnectionFailure;

  /// Represents a generic raw failure with custom error data.
  const factory Failure.raw({
    required Object rawFailure,
    required int statusCode,
  }) = _RawFailure;
}
