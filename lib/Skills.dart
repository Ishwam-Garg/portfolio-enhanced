import 'package:flutter/material.dart';

class Skills extends StatelessWidget {

  Widget skills(value) {
    return Container(
      margin: EdgeInsets.only(left: 30,bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.lightBlue[200],
            radius: 6.0,
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(30),
            child: Image(image: AssetImage("Images/classopen.gif"),height: 150,width: 150,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0,left: 50.0,right: 50.0,bottom: 30.0),
            child:  new Text("My Skills",style: new TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 34,
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),),
          ),
          skills("C++"),
          skills("Python"),
          skills("Native App development"),
          skills("Flutter Development"),
          skills("Competitive Programming"),
          skills("Website designing"),
        ],
      ),
    );
  }
}
