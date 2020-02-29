import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    
    home:Splashscreen() ,));
  
}

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      ()=>Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginPage())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.orange,
      ),
      
    );
  }
}


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: ()=>SystemNavigator.pop(),
          child: Container(
        child: Center(child: Text('Login Page')),
        
      ),
    );
  }
}