import 'package:flutter/material.dart';
import 'package:post_widget/post%20_module.dart';
import 'package:post_widget/video%20player%20widget.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(post.userProfilePictureUrl ?? ''),
                radius: 20,
              ),
              SizedBox(width: 8),
              Text(
                post.author,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.play_arrow, color: Colors.grey),
              SizedBox(width: 4),
              Text(
                post.cliqueTitle ?? '',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                post.college ?? '',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey
                ),

              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            post.content,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          if (post.imageUrl != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  post.imageUrl!,
                  fit: BoxFit.contain,
                  height: 200,
                ),
              ),
            ),
          if (post.videoUrl != null)
            VideoPlayerWidget(videoUrl: post.videoUrl!),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined, color: Colors.grey,),
                  Icon(Icons.favorite, color: Colors.red),
                  SizedBox(width: 4),
                  Text("[3.5k]"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.mode_comment_outlined, color: Colors.grey,),
                  SizedBox(width: 4),
                  Text('[3.5k]'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}