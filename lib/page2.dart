import 'package:flutter/material.dart';
import 'package:page_route_demo/page3.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key,required  this.x,required this.y}) : super(key: key);
    String ?y;
    String ?x;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),

      ), body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            MaterialButton(
        color: Colors.lightGreenAccent,
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (_)=>Page3(name: x,id: y,)));
        },child: Text("Go Page 3"),),
            Container(
              child: Text('$x er id holo $y'),
            )
            ],),

      ),
    );
  }
}