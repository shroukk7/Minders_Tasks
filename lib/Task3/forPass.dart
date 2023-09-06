import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Login.dart';

class Forgotpass extends StatefulWidget {
  const Forgotpass({super.key});
  static String id = "forgotpass";

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Form(
        key: formkey,
        child: Column(
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
                if(formkey.currentState!.validate())
                  Navigator.of(context).pushNamed(Login.id);
            }, child: Text("Submit"),
            )
          ],
        ),
      )),
    );
  }
}