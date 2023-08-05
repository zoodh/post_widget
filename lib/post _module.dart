class Post {
  final String title;
  final String author;
  final String content;
  final String? imageUrl;
  final String? videoUrl;
  final String? cliqueTitle;
  final String? userProfilePictureUrl;
  final String? major;
  final String? college;
  Post({
    required this.title,
    required this.author,
    required this.content,
    this.imageUrl,
    this.videoUrl,
    this.cliqueTitle,
    this.userProfilePictureUrl,
    this.major,
    this.college,
  });
}