import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task2/Task3/Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  static String id = "registration";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),

          SizedBox(height: 10,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            validator: (value){
              if(value!.isEmpty){
                return "Required";
              }
              return null;
            },
          ),
          SizedBox(height: 10,),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Password",
              suffixIcon: IconButton(onPressed: (){
              },
              icon: Icon(Icons.remove_red_eye_rounded)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            validator: (value){
              if(value!.isEmpty){
                return "Required";
              }
              return null;
            },
          ),
          SizedBox(height: 10,),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Confirm Password",
              suffixIcon: IconButton(onPressed: (){
              },
              icon: Icon(Icons.remove_red_eye_rounded)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            validator: (value){
              if(value!.isEmpty){
                return "Required";
              }
              return null;
            },
          ),
          SizedBox(height: 10,),
          TextFormField(
            keyboardType: TextInputType.phone,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              labelText: "Phone",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            validator: (value){
              if(value!.isEmpty){
                return "Required";
              }
              return null;
            },
          ),
          SizedBox(height: 10,),

          //Gender
          //Uni
          //grade

          ElevatedButton(
            child: Text("Register"),
            onPressed: (){
              Navigator.of(context).pushNamed(Login.id);
            },
          ),
          TextButton(onPressed: (){
            Navigator.of(context).pushNamed(Login.id);
          }, child: Text("Have an account? Log in"))
          
          
        ],
      )),
    );
  }
}