import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../Widgets/ListTile.dart';
//import 'package:task2mm/mywidget/widget.dart';

List<MyListTile> people = [
    MyListTile(title: "Ali", subtitle: "01294876322",num: '1'),
    MyListTile(title: "Youssef", subtitle: "01124974722",num: '2'),
    MyListTile(title: "Aisha", subtitle: "01937462822",num: '3'),
    MyListTile(title: "Marwan", subtitle: "01142094721",num: '4'),
    MyListTile(title: "Nour", subtitle: "01123846571",num: '5'),
    MyListTile(title: "Nada", subtitle: "01134593475",num: '6'),
  ];

class Contacts extends StatelessWidget {
  const Contacts({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.add),
        )],
      ),
      body:SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ListView.builder(
              itemCount: people.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return MyListTile(num: people[index].num,title: people[index].title, subtitle: people[index].subtitle);
              }),
        ))
    );
  }
}