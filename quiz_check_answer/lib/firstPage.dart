import 'package:flutter/material.dart';
import 'package:quiz_check_answer/Quiz.dart';
import 'package:quiz_check_answer/category.dart';

class FirstPage extends StatelessWidget {


   const FirstPage({super.key});

   Widget build(BuildContext context){

    return  MaterialApp(
      home: Scaffold(  
        appBar:AppBar( 

          title: Text("Quiz-App"), 

        ) ,
        body: Center(
          child:
          Column(
             mainAxisAlignment: MainAxisAlignment.center ,
              children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4JHeoIZC7lLnPcCBbA2psXwpBv4H1FCcDuw&s"),
              ElevatedButton(onPressed: (){ 

                Navigator.push(context ,MaterialPageRoute(
                  builder: (context){
                    return Quiz();
                  }
                
                
                ) 
              );
              }, child:Text("START QUIZ")),

            ]
            ),
          )
        ),
      
    );
   }
}