class NewsModel {
  final String title;
  final String? category;
  final String description;
  final String content;
  double likes; // Make likes mutable
  final String imageUrl;
  final int createdAt;
  final String author;
  bool isLiked; // Add isLiked property

  NewsModel({
    required this.title,
    required this.description,
    required this.createdAt,
    required this.content,
    required this.likes,
    this.category,
    required this.imageUrl,
    this.author = 'Admin',
    this.isLiked = false, // Default to false
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      description: json['description'],
      createdAt: json['createdAt'],
      content: json['content'],
      likes: json['likes'],
      imageUrl: json['imageUrl'],
      author: json['author'],
      category: json['category'],
      isLiked: json['isLiked'] ?? false, // Handle optional isLiked
    );
  }
}
