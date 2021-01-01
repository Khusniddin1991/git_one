import 'package:flutter/material.dart';
import 'package:flutterer/SpashPage.dart';
import 'package:flutterer/pages/My_homePage.dart';
import 'package:flutterer/pages/SiginPage.dart';
import 'package:flutterer/pages/Sign%20up.dart';




     main (){runApp(MaterialApp(debugShowCheckedModeBanner: false,home:MyHomePage(),

     routes: {
       MyHomePage.id:(ctx)=>MyHomePage(),
       SplashPage.id:(ctx)=>SplashPage(),
       SiginPage.id:(ctx)=>SiginPage(),
       SiginUpPage.id:(ctx)=>SiginUpPage()


     },));}


   class MainPage extends StatefulWidget {
  @override
   _MainPageState createState() => _MainPageState();
  }

  class _MainPageState extends State<MainPage> {
  @override
    Widget build(BuildContext context) {
    return Container();
    }
}
