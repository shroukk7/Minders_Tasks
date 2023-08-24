import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task2/Task2/Widgets/secListTile.dart';

//i only knew how to make this tab bar but i didn't know how to make the chats appear in the chats tab only :(
class screen2 extends StatelessWidget {
  screen2({super.key});
  List<MyListTile> Users = [
    MyListTile(title: "Ali", subtitle: "How are you?", trailing: "7:47 AM"),
    MyListTile(title: "Youssef", subtitle: "Hello", trailing: "7:30 AM"),
    MyListTile(title: "Aisha", subtitle: "Hey", trailing: "7:00 AM"),
    MyListTile(title: "Marwan", subtitle: "Hello", trailing: "7/3"),
    MyListTile(title: "Nour", subtitle: "How are you?", trailing: "7/3"),
    MyListTile(title: "Nada", subtitle: "Hey", trailing: "7/3"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 7, 94, 84),
          title: Text("WhatsApp"),
          actions: [Icon(Icons.search),
          SizedBox(width: 15,),
          Icon(Icons.more_vert)],
          bottom: TabBar(
            tabs: [
              Icon(Icons.camera_alt_sharp),
              Text("CHATS"),
              Text("STATUS"),
              Text("CALLS"),
            ],
            labelPadding: EdgeInsets.only(bottom: 10),
            labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.white)
            ),
          ),
        ),
        body:SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ListView.builder(
              itemCount: Users.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return MyListTile(title: Users[index].title, subtitle: Users[index].subtitle, trailing: Users[index].trailing);
              }),
        ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message),
        backgroundColor: Color.fromARGB(255, 46, 173, 53),)

      ),

    );
  }
}