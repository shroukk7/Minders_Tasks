import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyListTile extends StatelessWidget {
  String title;
  String subtitle;
  String trailing;

  MyListTile({super.key, required this.title,required this.subtitle, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
        padding: EdgeInsets.all(5),
        child: ListTile(
          leading: CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.person_rounded,color: Colors.white,size: 40,),
                            backgroundColor: Color.fromARGB(255, 220, 220, 220),
                          ),
                          title: Text(
                            title,
                            style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(subtitle,style: TextStyle(
                                fontSize: 16,),),
                          trailing: Text(trailing,style: TextStyle(
                                fontSize: 16,color: Colors.grey[600])),
        ),
        ),
        Divider(
            color: Color.fromARGB(255, 197, 195, 195),
            indent: 80,
            endIndent: 20,
          ),
      ],
    );
  }
}