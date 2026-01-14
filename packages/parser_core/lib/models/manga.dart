import '../enums/status.dart';
import '../enums/content_type.dart';
import 'author.dart';
import 'tag.dart';


class Manga {

  final String id;
  final String sourceId;
  final String title;
  final String? altTitle;
  final String url;

  final String? description;
  final String? coverUrl;

  final Status status;
  final Status translateStatus;
  final ContentType contentType;

  final List<Author> authors;
  final List<Tag> tags;

  final int? year;
  final double? rating;

  const Manga({
    required this.id,
    required this.sourceId,
    required this.title,
    required this.url,
    required this.status,
    required this.translateStatus,
    required this.contentType,

    this.altTitle,
    this.description,
    this.coverUrl,
    this.authors = const [],
    this.tags = const [],
    this.year,
    this.rating,
  });

}
