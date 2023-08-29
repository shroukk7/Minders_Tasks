import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task2/Task3/forPass.dart';
import 'package:task2/Task3/homePage.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static String id = "login";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),

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
              if(value!.contains("@")&&value.endsWith(".com")){
                return null;
              }
              return "Please enter a valid email";
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
              if(value!.length<8){
                return "Password must be at least 8 characters";
              }
              return null;
            },
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            child: Text("Login"),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(Home.id);
            },
          ),

          TextButton(onPressed: (){
            Navigator.of(context).pushNamed(Forgotpass.id);
          }, child: Text("Forgot Password?")),
          
          

          
        ],
      )),
    );
  }
}