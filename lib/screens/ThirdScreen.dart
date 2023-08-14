import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Menu", style: TextStyle(color: Colors.black, fontSize: 50,fontWeight: FontWeight.bold,),),
            SizedBox(height: 10,),
            Row(
              children:[ Text(
              "HOT DRINKS", style: TextStyle(color: Colors.red,fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20,),
              Text(
                "Partition", style: TextStyle(color: Colors.black,fontSize: 25,),
                ),
              ]
              ),
              SizedBox(height: 20,),
              Center(
              child: Container(
                height: 120,
                width: double.infinity,
                decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1)
                ),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    child:Image.asset("assets/cappuccino.jpg", height: 200,width: 130,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                        margin: EdgeInsetsDirectional.only(top: 10),
                        child:Text("CAPPUCCINO", style: TextStyle(color: Colors.black, fontSize:20,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600),),
                        ),
                        SizedBox(width: 140,),
                        Row(
                          children: [
                            Text("40 L.E", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600),),
                            SizedBox(width: 18,),
                            Image.asset("assets/hearticon.jpg", height:45,width: 41,),
        
                          ],
                        )
                      ],
                    )
                ]),
              )
              ),
              //2nd
              SizedBox(height: 20,),
              Center(
              child: Container(
                height: 120,
                width: double.infinity,

                decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1)
                ),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    margin: EdgeInsetsDirectional.only(start: 2,bottom: 5),
                    child:Image.asset("assets/coffee.jpg", height: 200,width: 130,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                        margin: EdgeInsetsDirectional.only(top: 10),
                        child:Text("COFFEE", style: TextStyle(color: Colors.black, fontSize:20,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600),),
                        ),
                        SizedBox(width: 140,),
                        Row(
                          children: [
                            Text("30 L.E", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600),),
                            SizedBox(width: 18,),
                            Image.asset("assets/hearticon.jpg", height:45,width: 41,),
        
                          ],
                        )
                      ],
                    )
                ]),
              )
              ),
              //3rd
              SizedBox(height: 20,),
              Center(
              child: Container(
                height: 120,
                width: double.infinity,
                decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1)
                ),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    child:Image.asset("assets/mocha.jpg", height: 200,width: 130,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                        margin: EdgeInsetsDirectional.only(top: 10),
                        child:Text("MOCHA", style: TextStyle(color: Colors.black, fontSize:20,fontStyle: FontStyle.italic,fontWeight: FontWeight.w600),),
                        ),
                        SizedBox(width: 140,),
                        Row(
                          children: [
                            Text("40 L.E", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600),),
                            SizedBox(width: 18,),
                            Image.asset("assets/hearticon.jpg", height:45,width: 41,),
        
                          ],
                        )
                      ],
                    )
                ]),
              )
              ),
        
        
        
          ],
        
              ),
        )
      ),
    );
  }
}