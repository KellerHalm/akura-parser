import '../models/chapter.dart';
import '../models/manga.dart';


abstract interface class SourceDetails {

  Future<Manga> getDetails(String mangaUrl);
  Future<List<Chapter>> getChapters(String mangaUrl);

}
