import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task2/Task3/forPass.dart';
import 'package:task2/Task3/homePage.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static String id = "login";

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  bool obsecure = true;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();


  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formkey,
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
                if(value!.isEmpty){
                    return "Required";
                }
                if(value.contains("@")&&value.endsWith(".com")){
                  return null;
                }
                return "Please enter a valid email";
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              obscureText: obsecure,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye_rounded),
                onPressed: (){
                  setState(() {
                  obsecure=!obsecure;
                  });
                },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Required";
                }
                if(value.length<8){
                  return "Password must be at least 8 characters";
                }
                return null;
              },
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text("Login"),
              onPressed: (){
                if(formkey.currentState!.validate())
                  Navigator.of(context).pushReplacementNamed(Home.id);
              },
            ),
        
            TextButton(onPressed: (){
              Navigator.of(context).pushNamed(Forgotpass.id);
            }, child: Text("Forgot Password?")),
            
            
        
            
          ],
              ),
        )),
    );
  }
}