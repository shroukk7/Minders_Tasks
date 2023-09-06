import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task2/Task3/Myradio.dart';

class Home extends StatefulWidget {
  Home({super.key});
  static String id = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String ans1 = "";
  String ans2 = "";
  String ans3 = "";
  String ans4 = "";
  String ans5 = "";

  int calgrade(){
    int grade = 0;
    if(ans1 == "Neil Armstrong"){
      grade++;
    }
    if(ans2 == "Australia"){
      grade++;
    }
    if(ans3 == "8"){
      grade++;
    }
    if(ans4 == "7"){
      grade++;
    }
    if(ans5 == "Asia"){
      grade++;
    }
    return grade;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
            children: [
              //Q1
              Text("1. Who is the first person to walk on the moon?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              MyRadio(text: "Neil Armstrong",
              radioValue: ans1,
              onChanged: (value) {
                setState(() {
                  ans1=value!;
                }
              );
              },),
              MyRadio(text: "Paul Walker",
              radioValue: ans1,
              onChanged: (value) {
                setState(() {
                  ans1=value!;
                }
              );
              },),
              MyRadio(text: "Jade Anchor",
              radioValue: ans1,
              onChanged: (value) {
                setState(() {
                  ans1=value!;
                }
              );
              },),
              MyRadio(text: "Chandler",
              radioValue: ans1,
              onChanged: (value) {
                setState(() {
                  ans1=value!;
                }
              );
              },),
              //Q2
              
              Text("2. What is the smallest continent in the world?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              MyRadio(text: "Asia",
              radioValue: ans2,
              onChanged: (value) {
                setState(() {
                  ans2=value!;
                }
              );
              },),
              MyRadio(text: "Africa",
              radioValue: ans2,
              onChanged: (value) {
                setState(() {
                  ans2=value!;
                }
              );
              },),
              MyRadio(text: "Australia",
              radioValue: ans2,
              onChanged: (value) {
                setState(() {
                  ans2=value!;
                }
              );
              },),
              MyRadio(text: "Europe",
              radioValue: ans2,
              onChanged: (value) {
                setState(() {
                  ans2=value!;
                }
              );
              },),
              //Q3
              Text("3. How many planets are there is in our solar system?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              MyRadio(text: "2",
              radioValue: ans3,
              onChanged: (value) {
                setState(() {
                  ans3=value!;
                }
              );
              },),
              MyRadio(text: "5",
              radioValue: ans3,
              onChanged: (value) {
                setState(() {
                  ans3=value!;
                }
              );
              },),
              MyRadio(text: "8",
              radioValue: ans3,
              onChanged: (value) {
                setState(() {
                  ans3=value!;
                }
              );
              },),
              MyRadio(text: "11",
              radioValue: ans3,
              onChanged: (value) {
                setState(() {
                  ans3=value!;
                }
              );
              },),
              //Q4
              Text("4. How many continents are there in the world?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              MyRadio(text: "5",
              radioValue: ans4,
              onChanged: (value) {
                setState(() {
                  ans4=value!;
                }
              );
              },),
              MyRadio(text: "7",
              radioValue: ans4,
              onChanged: (value) {
                setState(() {
                  ans4=value!;
                }
              );
              },),
              MyRadio(text: "12",
              radioValue: ans4,
              onChanged: (value) {
                setState(() {
                  ans4=value!;
                }
              );
              },),
              MyRadio(text: "9",
              radioValue: ans4,
              onChanged: (value) {
                setState(() {
                  ans4=value!;
                }
              );
              },),
              // //Q5
              Text("5. What is the largest continent in the world?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              MyRadio(text: "Asia",
              radioValue: ans5,
              onChanged: (value) {
                setState(() {
                  ans5=value!;
                }
              );
              },),
              MyRadio(text: "Africa",
              radioValue: ans5,
              onChanged: (value) {
                setState(() {
                  ans5=value!;
                }
              );
              },),
              MyRadio(text: "Australia",
              radioValue: ans5,
              onChanged: (value) {
                setState(() {
                  ans5=value!;
                }
              );
              },),
              MyRadio(text: "Europe",
              radioValue: ans5,
              onChanged: (value) {
                setState(() {
                  ans5=value!;
                }
              );
              },),
    
              // RadioListTile(value: 0,
              // groupValue: radioValue, 
              // onChanged: (value) {
              //   setState(() {
              //     radioValue=value;
              //   }
              // );
              // },
              // title: Text("1.Paul Walker"),
              // ),

              ElevatedButton(onPressed: (){
                final snackBar = SnackBar(
                    content: Text("Your grade is " + calgrade().toString() + " Out of 5"),
                    action: SnackBarAction(
                      label: 'Reset',
                      onPressed: () {
                        setState(() {
                          ans1 = '';
                          ans2 = '';
                          ans3 = '';
                          ans4 = '';
                          ans5 = '';
                        });
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }, child: Text("Submit"))
            ],
                ),
          ),
        )),
    );
  }
}