import 'package:flutter/material.dart';
import 'package:flutterer/screens/GridView1.dart';
import 'package:flutterer/screens/GridView2.dart';


class MyHomePage extends StatefulWidget {
  static final String id='MyHomePage';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController=PageController();
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        NavigationRail(
          elevation: 12,
          backgroundColor: Colors.deepPurple,
          selectedIconTheme: IconThemeData(color: Colors.green),
          destinations: [
          NavigationRailDestination(icon:Icon(Icons.add),
            selectedIcon: Icon(Icons.add),
            label: Text('add'),
          ),
            NavigationRailDestination(icon:CircleAvatar(backgroundImage: AssetImage('asset/images/Ic_image.jpeg'),),

              label: Text('user'),
            ),
          NavigationRailDestination(icon:Icon(Icons.person),
            selectedIcon: Icon(Icons.person),
            label: Text('person'),
          )
        ], selectedIndex: _selectedIndex,
        onDestinationSelected: (int index){
          setState(() {
            _selectedIndex=index;
            _pageController.animateToPage(index, duration: Duration(seconds: 1), curve: Curves.bounceIn);
          });
        },
          labelType: NavigationRailLabelType.all
          ,),Expanded(child:PageView(controller:_pageController ,
             onPageChanged: (int index){
            _selectedIndex=index;
                },
              children: [
               GridView1(),
               GridView2(),
                Container(height:MediaQuery.of(context).size.height,width:MediaQuery.of(context).size.width,child: Column(children: [
                  Container(height: 400,color: Colors.yellow,),
                  Expanded(child: Container(decoration: BoxDecoration(color: Colors.blue,
                    borderRadius:BorderRadius.only(topRight:Radius.circular(30),topLeft: Radius.circular(30))
                  ),))
                ],),)
             ],))
        
        
        
        
      ],),
      
    );
  }
}
