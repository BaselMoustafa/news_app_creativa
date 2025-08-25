class NewsItem {
  final String title;
  final String describtion;
  final String url;
  final String imageUrl;
  final String author;
  final DateTime date;
  final String sourceName;

  const NewsItem({
    required this.title,
    required this.describtion,
    required this.url,
    required this.imageUrl,
    required this.author,
    required this.date,
    required this.sourceName
  });
}