import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A service for managing local data storage using the [SharedPreferences] package.
///
/// The [LocalService] class provides methods for initializing and interacting with
/// a local data storage (key-value store) using the [SharedPreferences] package.
/// It allows you to store and retrieve simple data types, such as strings, in a
/// persistent manner on the user's device.
///
/// Example usage:
///
/// ```dart
/// // Initialize the LocalService.
/// final localService = LocalService();
/// await localService.init();
///
/// // Save a string value with a specific key.
/// localService.saveString('username', 'JohnDoe');
///
/// // Retrieve a string value using the key.
/// final username = localService.readString('username');
///
/// // Remove a value from storage.
/// localService.remove('username');
/// ```
class LocalService {
  late SharedPreferences _instance;
  bool _hasBeenInitialized = false;

  /// A service for managing local data storage using the [SharedPreferences] package.
  ///
  /// The [LocalService] class provides methods for initializing and interacting with
  /// a local data storage (key-value store) using the [SharedPreferences] package.
  /// It allows you to store and retrieve simple data types, such as strings, in a
  /// persistent manner on the user's device.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// // Initialize the LocalService.
  /// final localService = LocalService();
  /// await localService.init();
  ///
  /// // Save a string value with a specific key.
  /// localService.saveString('username', 'JohnDoe');
  ///
  /// // Retrieve a string value using the key.
  /// final username = localService.readString('username');
  ///
  /// // Remove a value from storage.
  /// localService.remove('username');
  /// ```
  LocalService();

  /// Initializes the [LocalService] instance.
  ///
  /// This method should be called before using other methods of [LocalService].
  ///
  /// Returns a `Future` that completes when the initialization is finished.
  Future<void> init() async {
    if (_hasBeenInitialized) {
      return;
    } else {
      _instance = await SharedPreferences.getInstance();
      _hasBeenInitialized = true;
      return;
    }
  }

  /// Saves a string [value] with the specified [key] in the local data storage.
  ///
  /// This method allows you to store a string value with a unique key in the
  /// local data storage. The [key] is used to later retrieve or remove the stored value.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// // Save a username in local storage.
  /// localService.saveString('username', 'JohnDoe');
  /// ```
  Future<void> saveString(String key, String value) async {
    await _instance.setString(key, value);
    return;
  }

  /// Reads a string value associated with the specified [key] from the local data storage.
  ///
  /// This method retrieves a string value that was previously stored with the given [key].
  /// If no value is found for the provided [key], it returns `null`.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// // Retrieve the saved username.
  /// final username = localService.readString('username');
  /// if (username != null) {
  ///   // Use the retrieved username.
  /// } else {
  ///   // The key 'username' was not found in storage.
  /// }
  /// ```
  String? readString(String key) {
    return _instance.getString(key);
  }

  /// Removes the value associated with the specified [key] from the local data storage.
  ///
  /// This method allows you to remove a previously stored value associated with the
  /// given [key] from the local data storage. After removal, attempting to retrieve
  /// the value using the same [key] will return `null`.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// // Remove the username from local storage.
  /// localService.remove('username');
  /// ```.
  Future<void> remove(String key) async {
    await _instance.remove(key);
    return;
  }
}

/// Provides an instance of [LocalService] for handling local storage operations.
///
/// Usage:
/// ```dart
/// final localService = ref.read(localServiceProvider);
/// ```
final localServiceProvider = Provider<LocalService>((ref) => LocalService());
