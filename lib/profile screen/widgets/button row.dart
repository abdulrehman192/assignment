
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          height: 50,
          width: 160,
          child: RaisedButton(onPressed: (){},
            color: Colors.blueAccent.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0)
            ),
          child: Text('Follow',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400),),
          ),
        ),

        Container(
          height: 50,
          width: 160,
          // decoration: BoxDecoration(
          //   border: Border.all(width: 2.0,color: Colors.blue,style: BorderStyle.solid)
          // ),
          child: RaisedButton(onPressed: (){},
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(
                  width: 2.0,color: Colors.blue,style: BorderStyle.solid
                )
            ),
            child: Text('Message',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
          ),
        )
      ],
    );
  }
}
