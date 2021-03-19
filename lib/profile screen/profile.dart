
import 'package:assignment/model/user%20model.dart';
import 'package:assignment/profile%20screen/widgets/Body.dart';
import 'package:assignment/util/network.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  Future<User> _data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Network network = new Network("https://reqres.in/api/users/2");
    _data = network.getusers();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(Icons.more_horiz,color: Colors.grey,size: 30,),
              onPressed: (){}
              )
        ],
      ),
      body: Center(
        child: FutureBuilder(
          future: _data,
          builder: (context,AsyncSnapshot<User> snapshot)
          {
            if(snapshot.hasData)
              {
                var _data = snapshot.data.data;
                var _support = snapshot.data.support;
                String name = '${_data.firstName} ${_data.lastName}';
                String image_url = '${_data.avatar}';
                String text = '${_support.text}';
                return Body(name: name,image_url: image_url,text: text,);
              }
            else
              {
                return CircularProgressIndicator();
              }
          },
        ),
      ),
    );
  }
}
