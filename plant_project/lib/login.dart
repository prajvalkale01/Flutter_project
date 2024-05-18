
import 'package:flutter/material.dart';
import 'package:plant_project/verification.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    
      resizeToAvoidBottomInset: false ,
     
     backgroundColor: Color(0xffFBF7F8) ,
       body:  Column(  
        children: [  
          Row(
            children:[
                      Image.asset("assets/login.png"),
          ]
          ),
          const  SizedBox(height: 20,),

        const  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [ 
                    Text("Log in", style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),

         ],),

        const  SizedBox( height: 20,),

         Container(
          margin: EdgeInsets.all(30),
          
           child: Center(
             child: TextField( 
             
              decoration: InputDecoration(
                border: OutlineInputBorder( 
                  borderRadius: BorderRadius.circular(10),
                  borderSide:const  BorderSide(color: Color(0xffCCD3C4))
                ),
                focusedBorder: OutlineInputBorder( 
                  borderSide:const BorderSide(color: Color(0xffCCD3C4)),
                    borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon:const  Icon(Icons.call_outlined,color: Color(0xffA4A4A4),),
                hintText : " mobile number ",
              ),
             
                     ),
           ),
         ),

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
              return Verification();

            }));

          }, child:const  Text("Log in",style: TextStyle(color: Colors.white , fontSize: 22),)),
         ),

         Image.asset("assets/main2.png"),

         



          
        ],

       ),
     );
  }
}