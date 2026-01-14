import 'http_client.dart';


abstract interface class CacheStore {

  Future<String?> get(String key);
  Future<void> set(String key, String value);

}

class CacheHttpClient implements CacheStore {

  final HttpClient inner;
  final CacheStore cache;

  CacheHttpClient(this.inner, this.cache);


  @override
  Future<String> get(String url, { Map<String, String>? headers }) async {
    final cached = await cache.get(url);
    if (cached != null) return cached;

    final response = await inner.get(url, headers: headers);
    await cache.set(url, response);
    return response;
  }

}
