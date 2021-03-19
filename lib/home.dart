
import 'package:assignment/explore%20screen/explore.dart';
import 'package:assignment/profile%20screen/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(Icons.favorite,color: Colors.red,size: 35,),
              onPressed: (){},
              splashColor: Colors.redAccent,
              )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 220,
              height: 60,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.blue,
                child: Row(
                  children: [
                    Icon(Icons.person_pin_outlined,color: Colors.white,size: 35,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('View Profile',style: TextStyle(color: Colors.white,fontSize: 20),),
                    )
                  ],
                ),
                onPressed: ()
                {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>
                      Profile()
                    ));
                },
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 220,
              height: 60,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.blue,
                child: Row(
                  children: [
                    Icon(Icons.explore_outlined,color: Colors.white,size: 35,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Explore More',style: TextStyle(color: Colors.white,fontSize: 20),),
                    )
                  ],
                ),
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>
                      Explore()
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
