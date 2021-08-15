/// Return two digit decimal number of double
///
/// e.g. 12.345534 return 12.34
extension DecimalNumber on double? {
  /// getDecimalNumber is responsible to
  /// return two digit decimal number of double
  String? getDecimalNumber() {
    return this?.toStringAsFixed(2);
  }
}
