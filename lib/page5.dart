import 'dart:io';

import 'package:flutter/material.dart';
import 'package:page_route_demo/homepage.dart';
import 'package:page_route_demo/page1.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page5"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
        [
          MaterialButton(
            color: Colors.lightGreenAccent,
            onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (c)=>Page1()), (route) => false);
            },child: Text("back"),),
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