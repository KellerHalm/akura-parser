import '../enums/content_type.dart';


abstract interface class Source {

  String get id;
  String get name;
  String get baseUrl;
  String get language;

  ContentType get contentType;

}
