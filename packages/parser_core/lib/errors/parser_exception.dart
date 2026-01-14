class ParserException implements Exception {

  final String message;

  const ParserException(this.message);

  @override
  String toString() => message;

}
