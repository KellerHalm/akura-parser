import 'package:parser_core/parser_core.dart';


mixin MangalibDetails on FullSource {

  @override
  Future<Manga> getDetails(String mangaUrl) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Chapter>> getChapters(String mangaUrl) async {
    throw UnimplementedError();
  }

}
