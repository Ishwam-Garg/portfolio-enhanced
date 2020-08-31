import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'info.dart';


void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: new ThemeData(
      brightness: Brightness.light,
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController pageController = PageController(initialPage: 0);

  pagechange(){
    pageController.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.bounceIn);
  }
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        backgroundColor: Colors.white,
        image: Image.asset("Images/dotloading.gif"),
        loaderColor: Colors.white,
        photoSize: 150,
        navigateAfterSeconds: Info(),
    );
  }
}


