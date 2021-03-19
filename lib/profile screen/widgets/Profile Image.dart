
import 'package:flutter/material.dart';

class Profile_Image extends StatelessWidget {
  final String url;

  const Profile_Image({Key key, this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 3.0,style: BorderStyle.solid,color: Colors.blueGrey),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
