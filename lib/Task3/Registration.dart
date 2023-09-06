import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task2/Task3/Login.dart';

class Register extends StatefulWidget {
  Register({super.key});
  static String id = "registration";

  @override
  State<Register> createState() => _RegisterState();
}
List<String> Gender=["Male","Female"];
List<String> Uni=[
  "Cairo University",
  "Helwan University",
  "Ain Shams University"
  ];
List<String> Grade=[
  "1st grade",
  "2nd grade",
  "3rd grade",
  "4th grade"
  ];

class _RegisterState extends State<Register> {
  bool obsecure = true;
  bool obsc = true;

  String genderValue = Gender.first;
  String uniValue = Uni.first;
  String gradeValue = Grade.first;
  
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Form(
          key: formkey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            SizedBox(height: 5,),
            TextFormField(
              controller: passcontroller,
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
            SizedBox(height: 5,),
        
            TextFormField(
              obscureText: obsc,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye_rounded),
                onPressed: (){
                  setState(() {
                    obsc=!obsc;
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
                if(value!=passcontroller.text){
                  return"Password don't match";
                }
                return null;
              },
            ),
            SizedBox(height: 5,),
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
                if(value.length!=11){
                  return"Phone must be 11 digits";
                }
                return null;
              },
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(items: Gender.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(), 
                onChanged: (value) {
                  setState(() {
                    genderValue=value as String;
                  });
                }, value: genderValue,),

                DropdownButton<String>(items: Uni.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(), 
                onChanged: (value) {
                  setState(() {
                    uniValue=value as String;
                  });
                }, value: uniValue,),

                DropdownButton<String>(items: Grade.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(), 
                onChanged: (value) {
                  setState(() {
                    gradeValue=value as String;
                  });
                }, value: gradeValue,),
              ],
            ),
            //Gender
            //Uni
            //grade
            //SizedBox(height: 7,),

            ElevatedButton(
              child: Text("Register"),
              onPressed: (){
                if(formkey.currentState!.validate())
                  Navigator.of(context).pushReplacementNamed(Login.id);
              },
            ),
            TextButton(onPressed: (){
              Navigator.of(context).pushReplacementNamed(Login.id);
            }, child: Text("Have an account? Log in"))
            
            
          ],
              ),
        )),
    );
  }
}