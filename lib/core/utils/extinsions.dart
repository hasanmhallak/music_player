extension StringX on String {
  /// Whether this string contains Arabic characters.
  ///
  /// Example:
  ///
  /// ````dart
  /// const string = 'تجربة';
  /// final doesContainArabicCharacters = string.doContainArabicCharacters; // true.
  /// ````
  bool get doesContainArabicCharacters {
    // Find Arabic characters.
    final pattern = RegExp('(^[\u0621-\u064A\u0660-\u0669])', unicode: true);
    return contains(pattern);
  }
}
