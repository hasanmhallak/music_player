import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/lang.dart';
import '../infrastructure/local_service.dart';

/// Manages the application's selected language state and settings.
///
/// The `LanguageNotifier` class is responsible for managing the selected language
/// within the application. It utilizes the `LocalService` instance to save, read,
/// and initialize the selected language.
///
/// Example usage:
/// ```dart
/// final languageNotifier = LanguageNotifier(localServiceInstance);
///
/// // Initialize the selected language.
/// languageNotifier.initLang();
///
/// // Save a new selected language.
/// await languageNotifier.saveLang(Lang.en);
///
/// // Read the currently selected language.
/// final selectedLang = languageNotifier.readLang();
/// ```
class LanguageNotifier extends StateNotifier<Lang> {
  final LocalService _instance;

  /// Manages the application's selected language state and settings.
  ///
  /// The `LanguageNotifier` class is responsible for managing the selected language
  /// within the application. It utilizes the `LocalService` instance to save, read,
  /// and initialize the selected language.
  ///
  /// Example usage:
  /// ```dart
  /// final languageNotifier = LanguageNotifier(localServiceInstance);
  ///
  /// // Initialize the selected language.
  /// languageNotifier.initLang();
  ///
  /// // Save a new selected language.
  /// await languageNotifier.saveLang(Lang.en);
  ///
  /// // Read the currently selected language.
  /// final selectedLang = languageNotifier.readLang();
  /// ```
  LanguageNotifier(this._instance) : super(Lang.en);

  /// Initializes the application's selected language.
  ///
  /// If no language is selected, this method will initialize it based on the
  /// platform's locale or a default value.
  void initLang() {
    late final String locale;
    if (kIsWeb) {
      locale = _instance.readString('lang') ?? 'en';
    } else {
      locale =
          _instance.readString('lang') ?? Platform.localeName.split('_').first;
    }
    state = Lang.values.firstWhere((e) => e.name == locale);
  }

  /// Saves the selected language for the application.
  ///
  /// This method saves the selected language using the provided `LocalService`
  /// instance and updates the notifier's state accordingly.
  ///
  /// Example usage:
  /// ```dart
  /// await languageNotifier.saveLang(Lang.en);
  /// ```
  Future<void> saveLang(Lang selectedLang) async {
    await _instance.saveString('lang', selectedLang.name);
    state = selectedLang;
  }

  /// Reads and returns the currently selected language.
  ///
  /// This method reads the selected language from the `LocalService` instance
  /// and returns it as a `Lang` enum.
  ///
  /// Example usage:
  /// ```dart
  /// final selectedLang = languageNotifier.readLang();
  /// ```
  Lang readLang() {
    return Lang.values
        .firstWhere((e) => e.name == _instance.readString('lang')!);
  }
}

/// Manages the app's language using a [LanguageNotifier].
///
/// This provider is responsible for initializing and saving the selected language.
/// It uses the [LanguageNotifier] to change and retrieve the app's current language.
///
/// Usage:
/// ```dart
/// final selectedLang = ref.read(languageProvider);
/// ```
final languageProvider = StateNotifierProvider<LanguageNotifier, Lang>(
  (ref) {
    return LanguageNotifier(ref.watch(localServiceProvider));
  },
);
