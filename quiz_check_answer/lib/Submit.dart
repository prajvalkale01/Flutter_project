
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class SubMit extends StatefulWidget {  

  int? marks ;

    SubMit(int _marks){
    this.marks = _marks ;
  }

  @override
  State<SubMit> createState() => _SubMitState();
}

class _SubMitState extends State<SubMit> {


  void initState(){
    super.initState() ;

    Future.delayed(Duration(seconds: 2),(){
      isColor();

    });
  

  }

  Color isColor(){
     
   
    if(markCol==false){
      return Colors.white ;
    }
    else{
      return Colors.black ;
    } 

  }

  

  bool markCol = false ;

  Widget build(BuildContext context) {

    return Scaffold(  
      appBar: AppBar( 
        title: Text("quiz"),
      ), 
      body:   
      Center(  
        child:
        Column(  
          children: [  
           Container  (  
          height: 300,
          width: 300,
          
          child: 
         Lottie.asset("Animation/done.json",fit:BoxFit.cover , repeat: false),
        ),
        ElevatedButton(onPressed: (){

         setState(() {
          markCol=true;
    
         });
          
            
        },
      
         child: Text("View Score")),

        Text("Total Marks : ${widget.marks}",style: TextStyle(fontSize: 30,color:isColor()),),

   

          ],
      
      
      )
      )
    );
  }
}