import 'package:flutter/material.dart';
import 'package:post_widget/post%20_module.dart';
import 'package:post_widget/post_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Post myPost = Post(
      title: 'My Post Title',
      author: 'zood',
      major: 'engineering',
      college:'aic',
      content: 'This is the content of my post.',
      imageUrl: 'https://prodimage.images-bn.com/pimages/9781779516404_p0_v2_s1200x630.jpg',
      videoUrl: null,
      cliqueTitle: 'cliqueTitle',
      userProfilePictureUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzyXzihRSnfICvhZCVf6gSPv35Q1EXY9blNA-70uCCYA&s',
    );

    return MaterialApp(
      home: Scaffold(
        body: PostWidget(post: myPost),
      ),
    );
  }
}