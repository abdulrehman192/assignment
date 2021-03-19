
import 'package:assignment/explore%20screen/widgets/post%20image.dart';
import 'package:assignment/model/post%20model.dart';
import 'package:flutter/material.dart';

import 'profile row.dart';

class PostCard extends StatelessWidget {
  final List<Post> posts;
  final int index;

  const PostCard({Key key, this.posts, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Profile_Row(),
            Row(
              children: [
                Container(
                  height: 400,
                  width: size.width / 5,
                  child: Column(
                    children: [
                      IconButton(
                          icon: Icon(Icons.chat_bubble_outline,color: Colors.grey,),
                          onPressed: (){}
                          ),
                      Text('254'),
                      IconButton(
                          icon: Icon(Icons.favorite_border,color: Colors.red,),
                          onPressed: (){}
                      ),
                      Text('3456')
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: ((size.width / 5) * 4)-20,
                  child: Column(
                    children: [
                      Container(
                        width: ((size.width / 5) * 4)-20,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${posts[index].body}',style: TextStyle(fontSize: 16),overflow: TextOverflow.fade,softWrap: true,),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        width: ((size.width / 5) * 4)-20,
                        height: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage('https://media.gettyimages.com/photos/tiger-portrait-picture-id949472768?s=612x612'),
                            fit: BoxFit.cover
                          )
                        ),
                      )
                    ],
                  ),
                )

              ],
            ),
            SizedBox(height: 30,),
            Divider(),
          ]
      ),
    );
  }
}

