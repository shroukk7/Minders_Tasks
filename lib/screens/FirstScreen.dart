import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Task 1"),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Container(
          margin: EdgeInsetsDirectional.only(start: 20, top: 30),
          child: Row(
            children:[
              Container(
                color: Colors.red,
                height: 150,
                width: 100,
              ),
              SizedBox(width: 70),
              Container(
                color: Colors.yellow,
                height: 150,
                width: 100,
              ),
            ],
          )
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 20,bottom: 30),
          child: Row(
            children:[
              Container(
                color: Colors.red,
                height: 150,
                width: 100,
              ),
              SizedBox(width: 70),
              Container(
                color: Colors.orange,
                height: 150,
                width: 100,
              ),
            ],
          )
          )
        ]
        ),
      )
      );
  }
}
