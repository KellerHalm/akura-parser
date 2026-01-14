import 'package:parser_core/parser_core.dart';
import 'package:parser_sources/parser_sources.dart';
import 'package:parser_http/parser_http.dart';

import 'parser_plugin.dart';


class RuMangaPlugin extends ParserPlugin {
  @override
  String get id => 'ru_manga';

  @override
  String get name => 'Russian Manga Sources';

  @override
  List<FullSource> createSources(HttpClient client) {
    return <FullSource>[
      MangaLibSource(client)
    ];
  }
}
