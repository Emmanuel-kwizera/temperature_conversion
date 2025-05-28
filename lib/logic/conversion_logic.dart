class ConversionResult {
  final String output;
  final String description;

  ConversionResult(this.output, this.description);
}

ConversionResult convertTemperature(double value, bool isFtoC) {
  double result;
  String description;

  if (isFtoC) {
    result = (value - 32) * 5 / 9;
    description = 'After Converting: $value F = ${result.toStringAsFixed(2)} C';
  } else {
    result = value * 9 / 5 + 32;
    description = 'After Converting: $value C = ${result.toStringAsFixed(2)} F';
  }

  return ConversionResult(result.toStringAsFixed(2), description);
}
