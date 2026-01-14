import 'package:parser_core/parser_core.dart';


mixin MangalibCatalog on FullSource {

  @override 
  Future<List<Manga>> getPopular(int page) async {
    return [];
  }

  @override
  Future<List<Manga>> getLatest(int page) async {
    return [];
  }

  @override
  Future<List<Manga>> search(String query, int page) async {
    return [];
  }

}
