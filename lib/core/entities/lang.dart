/// An enumeration representing supported languages in the application.
///
/// The `Lang` enum defines two language options: English (`en`) and Arabic (`ar`).
/// This enum is typically used for language localization and internationalization
/// in the application to support multiple languages.
///
/// Example usage:
/// ```dart
/// final selectedLanguage = Lang.en; // Set the selected language to English.
///
/// if (selectedLanguage == Lang.ar) {
///   // Apply Arabic localization.
/// } else {
///   // Apply English localization.
/// }
/// ```
enum Lang {
  /// Represents the English language.
  en,

  /// Represents the Arabic language.
  ar,
}
