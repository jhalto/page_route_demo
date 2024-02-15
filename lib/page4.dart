import 'package:flutter/material.dart';
import 'package:page_route_demo/page5.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
        [
          MaterialButton(
            color: Colors.lightGreenAccent,
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (_)=>Page5()));
            },child: Text("Go Page 5"),),
          MaterialButton(
            color: Colors.lightGreenAccent,
            onPressed: (){
              Navigator.pop(context);
            },child: Text("back to page 2"),),
        ],),
      ),
    );
  }
}