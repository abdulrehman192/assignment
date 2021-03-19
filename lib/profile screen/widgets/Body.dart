
import 'package:assignment/profile%20screen/widgets/Profile%20Image.dart';
import 'package:assignment/profile%20screen/widgets/button%20row.dart';
import 'package:assignment/profile%20screen/widgets/image%20grid.dart';
import 'package:assignment/profile%20screen/widgets/stats.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  final String name,image_url,text;

  const Body({Key key, this.name, this.image_url,this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: <Widget>[

            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30,bottom: 30),
                child: Profile_Image(url: image_url,),
              ),
            ),
            Text('$name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$text',style: TextStyle(color: Colors.grey,fontSize: 18,),textAlign: TextAlign.center,),
            ),
            Divider(thickness: 1.0,),
            statistics(),
            Divider(thickness: 1.0,),
            SizedBox(height: 20,),
            Buttons(),
            SizedBox(height: 30,),
               Container(
                    child: Image_Grid()
                )
          ],
        ),
      ),
    );
  }
}
