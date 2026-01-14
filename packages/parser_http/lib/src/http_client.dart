abstract interface class HttpClient {

  Future<String> get(
    String url, {
      Map<String, String>? headers,
    }
  );

}
