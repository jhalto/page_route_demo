import 'package:flutter/material.dart';
import 'package:page_route_demo/page4.dart';
import 'package:page_route_demo/page5.dart';

class Page3 extends StatelessWidget {
  Page3({Key? key,this.name,this.id}) : super(key: key);
  String ? name;
  String ? id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: double.infinity,
        title: Text("name: $name id is $id"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
        [
          MaterialButton(
            color: Colors.lightGreenAccent,
            onPressed: (){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>Page4()));
            },child: Text("Go Page 4"),)
        ],),
      ),
    );
  }
}