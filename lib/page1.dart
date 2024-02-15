import 'dart:io';

import 'package:flutter/material.dart';
import 'package:page_route_demo/page2.dart';
import 'package:page_route_demo/page3.dart';

class Page1 extends StatelessWidget {
  String ?name;
  String ? id;
 Page1({ this.id,this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
        [
        MaterialButton(
          color: Colors.lightGreenAccent,
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (_)=>Page2(x: "$name",y: "$id",)));
          },child: Text("$name"),),
          MaterialButton(onPressed: (){
            Navigator.pushNamed(context, "page2");
          },color: Colors.blue,child: Text("Named route goto page 2"),),
          MaterialButton(
            color: Colors.lightGreenAccent,
            onPressed: (){
              exit(0);
            },child: Text("Exit From app"),),
        ],),
      ),
    );
  }
}
