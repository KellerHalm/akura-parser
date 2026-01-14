import 'http_client.dart';


class RateLimitClient implements HttpClient {

  final HttpClient inner;
  final Duration delay;
  DateTime _last = DateTime.fromMillisecondsSinceEpoch(0);

  RateLimitClient(this.inner, this.delay);

  
  @override
  Future<String> get(String url, { Map<String, String>? headers }) async {
    final diff = DateTime.now().difference(_last);
    if (diff < delay) {
      await Future.delayed(delay - diff);
    }

    _last = DateTime.now();

    return inner.get(url, headers: headers);
  }

}
