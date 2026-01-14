import 'package:parser_core/parser_core.dart';
import 'package:parser_http/parser_http.dart';


abstract class ParserPlugin {

  String get id;
  String get name;

  List<FullSource> createSources(HttpClient client);

}
