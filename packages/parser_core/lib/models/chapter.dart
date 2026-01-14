class Chapter {

  final String id;
  final String mangaId;
  final String title;
  final String url;

  final int? number;
  final DateTime? date;
  final String? scanlator;
  final bool isPaid;

  const Chapter({
    required this.id,
    required this.mangaId,
    required this.title,
    required this.url,

    this.number,
    this.date,
    this.scanlator,
    this.isPaid = false,
  });

}
