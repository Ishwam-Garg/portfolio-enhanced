import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatefulWidget {
  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {

  _launch_url(url) async
  {
    if (await canLaunch(url))
    {
      await launch(url);
    }
    else{
      throw "Cannot launch the URL $url";
    }
  }

  Widget Social(name,url,color){
    return Container(
      child: RaisedButton(
        onPressed: (){_launch_url(url);},
        child: new Text(name),
        textColor: Colors.white,
        color: color,
        padding: const EdgeInsets.all(15),
        highlightColor: Colors.blueAccent,
      ),
    );
  }

  Widget about(value) {
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
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.indigo,
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
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50,bottom: 50),
                alignment: Alignment.center,
                child: Text("About Me",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 40,
                ),),
              ),
              about("School: Delhi Public School Ghaziabad"),
              about("College: AKGEC"),
              about("Phone: 8851850004"),
              about("Nationality: Indian"),
              about("Email: ishwamgarg19@gmail.com"),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50,bottom: 20),
                child: Text("My social Media",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 40,
                ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Social("facebook","https://www.facebook.com/profile.php?id=100008333706851l",Colors.blue),
                  Social("instagram","https://www.instagram.com/ishwamgarg/?hl=en",Colors.pink),
                  Social("github","'https://github.com/Ishwam-Garg'",Colors.black),
                  Social("Blog", "https://www.thebtechian.com/", Colors.green),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20,bottom: 20),
                child: Text("Thank You and Stay Safe!",style: TextStyle(
                  fontSize: 30,
                  color: Colors.green
                ),),
              )
            ],
      ),
    );
  }
}
