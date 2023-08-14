import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Task 2"),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ Row(
            children: [
              Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 410,
                child: const Center(
                  child: Text(
                    "Child 1", style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  ),
                ),
              ),
                SizedBox(width: 10,),
                Expanded(
                child:Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      ),
                      height: 200,
                      child: const Center(
                      child: Text(
                        "Child 2", style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    ),
                    ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    ),
                    height: 200,
                    child: const Center(
                    child: Text(
                      "Child 3", style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  ),
                  )
                ],
              )
              )
            ],
          )
          ]
        ),
      )
      );
  }
}
