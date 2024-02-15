import 'dart:io';

import 'package:flutter/material.dart';
import 'package:page_route_demo/page1.dart';
import 'package:page_route_demo/page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
           title: Text("HomePage"),
         ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
            [
              MaterialButton(
                color: Colors.lightGreenAccent,
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (_)=>Page1(name: "Nadim",id:
                  '202', ) ));
                },child: Text("Go Page 1"),),
              MaterialButton(
                color: Colors.lightGreenAccent,
                onPressed: (){
                  Navigator.pushNamed(context,"page1");
                },child: Text("Named route go Page 1"),),

              MaterialButton(
                color: Colors.lightGreenAccent,
                onPressed: (){
                  exit(0);
                },child: Text("Exit From app"),),
            ],),
          ),

      ),
    );
  }
}
