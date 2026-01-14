import '../models/page.dart';


abstract interface class SourcePages {

  Future<List<Page>> getPages(String chapterUrl);

}
