import '../models/manga.dart';


abstract interface class SourceCatalog {

  Future<List<Manga>> getPopular(int page);
  Future<List<Manga>> getLatest(int page);
  Future<List<Manga>> search(String query, int page,);

}
