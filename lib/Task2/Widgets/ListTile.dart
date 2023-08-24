import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class MyListTile extends StatelessWidget {
  String num;
  String title;
  String subtitle;
  MyListTile({super.key,required this.num ,required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.all(3),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration( color: Color.fromARGB(255, 31, 136, 222),borderRadius: BorderRadius.circular(40)),
                            child: Center(
                              child: Text(num, style: TextStyle(fontSize: 25,color: Colors.white),),
                            ),
                          ),
                          title: Text(
                            title,
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(subtitle),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 176, 176, 176),
                          indent: 80,
                          endIndent: 90,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(child: SizedBox()),
                            Icon(Icons.phone),
                            Expanded(child: SizedBox()),
                            Icon(
                              Icons.edit,
                              color: Colors.green,
                            ),
                            Expanded(child: SizedBox()),
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            Expanded(child: SizedBox()),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Divider(
                          color: Color.fromARGB(255, 176, 176, 176),
                          indent: 20,
                          endIndent:20,
                        ),
                      ],
                      
                    ));;
  }
}