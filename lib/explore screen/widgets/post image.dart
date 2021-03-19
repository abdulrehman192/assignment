
import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 68,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage('https://media.gettyimages.com/photos/tiger-portrait-picture-id949472768?s=612x612'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
