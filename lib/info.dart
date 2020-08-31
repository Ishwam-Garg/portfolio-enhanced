import 'package:flutter/material.dart';
import 'Skills.dart';
import 'social.dart';
class Info extends StatefulWidget {

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          pageSnapping: true,
          children: <Widget>[
                Container(
                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:50.0,left: 30.0,right: 30.0,bottom: 30.0),
                              child:  new Text("My Portfolio",style: new TextStyle(
                                  fontSize: 34,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black87,width: 8,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(minRadius: 20.0,backgroundImage: AssetImage("Images/student.gif"),maxRadius: 100,),//will pass my image here,
                            ),
                            new Container(
                              child: Text("Ishwam Garg",style: new TextStyle(
                                fontSize: 60,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                            new Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(top:30.0,left: 30.0,right: 30.0),
                                child: Text("Growing to become a Developer! \n\n\n\n Swipe to see more!",style: new TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),
                    ),
                  ],
              ),
            ),
                Container(
                  child: Skills(),
                ),
            Container(
              child: Social(),
            )
          ],
        ),
    );
  }
}
