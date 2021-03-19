

import 'package:assignment/explore%20screen/widgets/Body.dart';
import 'package:assignment/model/post%20model.dart';
import 'package:assignment/util/network.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  Future<PostList> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Network network = new Network('https://jsonplaceholder.typicode.com/posts');
    data = network.getposts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(Icons.search,color: Colors.grey,size: 30,),
              onPressed: (){}
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: FutureBuilder(
          future: data,
          builder: (_,AsyncSnapshot<PostList> snapshot)
          {
            List<Post> allposts = <Post>[];
            if(snapshot.hasData)
              {
                allposts = snapshot.data.posts;
                return Body(allposts: allposts,);
              }
            else
              {
                return Center(child :CircularProgressIndicator());
              }
          },
        ),
      ),
    );
  }
}
