import 'package:parser_core/parser_core.dart';
import 'package:parser_http/parser_http.dart';

import 'mangalib_catalog.dart';
import 'mangalib_details.dart';
import 'mangalib_pages.dart';


class MangalibSource extends FullSource with MangalibCatalog, MangaLibDetails, MangaLibPages {

  final HttpClient client;

  MangalibSource(this.client);


  @override
  String get id => 'mangalib';

  @override
  String get name => 'MangaLib';

  @override
  String get baseUrl => 'https://mangalib.me';

  @override
  String get language => 'ru';

  @override
  ContentType get contentType => ContentType.manga;

}
