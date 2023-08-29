import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Forgotpass extends StatelessWidget {
  const Forgotpass({super.key});
  static String id = "forgotpass";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Text("Reset Password",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
          
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
            
          ),
          SizedBox(height: 20,),

          ElevatedButton(onPressed: (){

          }, child: Text("Submit"),
          )
        ],
      )),
    );
  }
}