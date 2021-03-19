
import 'package:assignment/model/post%20model.dart';
import 'package:flutter/material.dart';

import 'post card.dart';

class Body extends StatelessWidget {
  final List<Post> allposts;

  const Body({Key key, this.allposts}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: allposts == null ? 0 : allposts.length,
            itemBuilder: (_, int index)
              {
                return PostCard(posts: allposts,index: index);
              }
        ),
    );
  }
}
