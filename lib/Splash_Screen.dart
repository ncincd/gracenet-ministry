
import 'package:flutter/material.dart';
import 'file:///C:/Users/TITAMTECH/AndroidStudioProjects/gracenet_ministry/lib/pages/MyHomePage.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    // TODO: implement initState
     
     Future.delayed(Duration(seconds: 3),(){
       print("After 3 seconds");
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Center(

         child: new Image.asset('assets/gracenet.jpg',height: 200,
      width: 200,
    ),
     ),
    ],
    ),
    );
  }
}
