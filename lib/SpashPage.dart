import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterer/pages/My_homePage.dart';
import 'package:flutterer/pages/SiginPage.dart';
import 'package:flutterer/pages/Sign%20up.dart';



class SplashPage extends StatefulWidget {
  static final String id='SplashPage';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
   var islogin=false;


  _dotime(){
    Timer(Duration(seconds: 3), (){
      islogin?Navigator.pushReplacementNamed(context, MyHomePage.id):Navigator.pushReplacementNamed(context, SiginUpPage.id);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    _dotime();

    super.initState();
  }

  @override








  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    body:Align(child: Container(
      child: Stack(children: [
       Align(alignment:Alignment.center,child:Image(image: AssetImage('asset/images/Ic_image.jpeg'),height: 100,width: 100,),),
        Align(
          alignment: Alignment.bottomCenter,
            child: Container(margin:EdgeInsets.all(25),child: Text('From this girl',style: TextStyle(color: Colors.black87,fontSize: 20),),))


      ],),
    ),),



    );
  }
}
