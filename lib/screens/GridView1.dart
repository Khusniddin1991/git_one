import 'package:flutter/material.dart';
import 'package:flutterer/pages/ImagePages.dart';


class GridView1 extends StatefulWidget {



  @override
  _GridView1State createState() => _GridView1State();
}

class _GridView1State extends State<GridView1> {
  List<Images> lists=[
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),  Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),

    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),  Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),
    Images(image:'asset/images/Ic_image.jpeg', texts: 'for everyone'),


  ];
  @override
  Widget build(BuildContext context) {
    return Container(child: GridView.count(crossAxisCount: 2,children:List.generate(lists.length, (index) =>
        Card(
          child:Wrap(direction: Axis.vertical,children: [
            Container(height: 100,width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(lists[index].image)
                )
              ),),
            Text(lists[index].texts,style: TextStyle(fontSize: 16.0),)

          ],),
        )



    ),),);
  }
}
