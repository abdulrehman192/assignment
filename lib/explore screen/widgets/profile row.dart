
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_Row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',),
              radius: 23,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Kristin Jones',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('20 minutes ago',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
          ],
        ),
        IconButton(
            icon: Icon(Icons.more_horiz,color: Colors.grey,),
            onPressed: (){})
      ],
    );
  }
}
