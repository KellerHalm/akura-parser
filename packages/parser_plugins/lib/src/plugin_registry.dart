import 'parser_plugin.dart';
import 'package:parser_core/parser_core.dart';
import 'package:parser_http/parser_http.dart';


class PluginRegistry {

  final Map<String, ParserPlugin> _plugin = {};

  void register(ParserPlugin plugin) {
    _plugin[plugin.id] = plugin;
  }

  List<FullSource> load(HttpClient client) {
    return _plugin.values
      .expand((p) => p.createSources(client))
      .toList();
  }

}
