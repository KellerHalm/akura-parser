class Page {

  final int index; 
  final String imageUrl;
  final Map<String, String>? headers;

  const Page({
    required this.index,
    required this.imageUrl,
    
    this.headers,
  });

}
