import 'package:flutter/material.dart';
import 'package:plant_project/homePage.dart';
import 'package:plant_project/login.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(  
      backgroundColor:const  Color(0xffFBF7F8) ,
      body: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [  

          Row(  
            children: [  
             SizedBox(width: 15,),
               IconButton(
                onPressed: (){
                   Navigator.pop(context);

                },
                icon:Icon(Icons.arrow_back) , color: Colors.black,),
              Spacer(),
              Image.asset("assets/verification.png"),

            ],
          ),

          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text("Verification " , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),)),

            Container(  
            margin: const EdgeInsets.only(left: 20),

              width: 250,
              child:const  Text("Enter the OTP code from the phone we just sent you."),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 
              Container(
                height: 55,
                width: 55,
                child: TextField(  
                  decoration: InputDecoration( 
                    border: OutlineInputBorder(  
                      borderRadius: BorderRadius.circular(10)

                    )
                  ),

                ),
                
              ),
               Container(
                height: 55,
                width: 55,
                child: TextField(  
                  decoration: InputDecoration( 
                    border: OutlineInputBorder(  
                      borderRadius: BorderRadius.circular(10)

                    )
                  ),

                ),
                
              ),
               Container(
                height: 55,
                width:55,
                child: TextField(  
                  decoration: InputDecoration( 
                    border: OutlineInputBorder(  
                      borderRadius: BorderRadius.circular(10)

                    )
                  ),

                ),
                
              ),
               SizedBox(
                height: 55,
                width: 55,
                child: TextField(  
                  decoration: InputDecoration( 
                    border: OutlineInputBorder(  
                      borderRadius: BorderRadius.circular(10),
                      borderSide:const  BorderSide(color: Color(0xffCCD3C4))

                    ),
                    focusedBorder:  OutlineInputBorder(  
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xffCCD3C4))

                    )
                  ),

                ),
                
              )
            ],),

             const  SizedBox(height: 20,),
              
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Row(  
                  children: [ 
                    Text("Don’t receive OTP code!",),
                    Text(" Resend")
                  ],
                
                ),
              ),
              SizedBox(height: 20,),

               Container( 
          height: 50,
          width: double.infinity, 
          margin: const EdgeInsets.only(left: 30 , right: 30),
          decoration: BoxDecoration(  
            borderRadius: BorderRadius.circular(10),
            gradient :const  LinearGradient( 
              colors: [ 
                Color(0xff3E6618),
                Color(0xff7CB446)
              ]
            )


          ),
          child: TextButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context){
              return HomePage();

            }));

          }, child:const  Text("Submit",style: TextStyle(color: Colors.white , fontSize: 22),)),
         ),
            


        ],  
      ) ,
    );
  }
}