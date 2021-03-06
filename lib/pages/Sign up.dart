import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterer/pages/My_homePage.dart';

import 'SiginPage.dart';


class SiginUpPage extends StatefulWidget {
  static final String id='SiginUpPage';

  @override
  _SiginPageState createState() => _SiginPageState();
}

class _SiginPageState extends State<SiginUpPage> {
  TextEditingController _email=new TextEditingController();
  TextEditingController _password=new TextEditingController();
  TextEditingController _name=new TextEditingController();

  @override

  initState(){
    super.initState();
    String email=_email.text;
    String password=_password.text;
    String name=_name.text;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.only(top: 340),
        child: Center(child: Container(

          child: Column(
            children: [
              Text('Instagram',style: TextStyle(fontFamily: 'Billabong.ttf',fontSize: 26),),

              //Name form
              Container(margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextField(
                  controller: _name,
                  style: TextStyle(fontSize: 16.5),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.black12)
                  ),
                ),),
              //email form
              Container(margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextField(
                  controller: _email,
                  style: TextStyle(fontSize: 16.5),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black12)
                  ),
                ),),

              // password
              Container(margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextField(
                  controller: _password,
                  style: TextStyle(fontSize: 16.5),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black12)
                  ),
                  obscureText: true,
                ),),
              Container(
                margin: EdgeInsets.only(top: 10,left:70,right: 70),
                height: 50,color: Colors.teal,

                child:FlatButton(child: Text('Sign up'),onPressed: (){
                  Navigator.pushReplacementNamed(context, SiginPage.id);
                },
                ),
              )
              ,Padding(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Text('do not you have an account ? ',style: TextStyle(color: Colors.black45,fontSize: 17),) ,SizedBox(width: 10,),
                  GestureDetector(

                      onTap: (){
                    Navigator.pushReplacementNamed(context, SiginPage.id);
                  },child: Text('Sign in',style: TextStyle(fontSize: 17),))




                ],),
              )

            ],),


        ),),
      ),

    );
  }
}
