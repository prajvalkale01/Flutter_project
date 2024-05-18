

import 'package:flutter/material.dart';

import 'package:quiz_check_answer/SubMit.dart';

class Quiz extends StatefulWidget {

   

  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{



  int _counter = 0 ;
  int _counter2 = 0 ;
  int _marks =0 ;
  int solve =0 ;
  bool preview = false ;
  bool col = false;
  Color scoreColor = Colors.white ;

   String reply  = " ";

   List questionList = [  

        


                
];



   List quiz = ["what is flutter  ? ","what is dart","what is emualtor","what setState() do ?","who call build Method 1st time ?","when we use stateless Widget ?"];
   List option1 = ["dart framework"    ,"framework"      ,"laptop"         ,"call build method"       ,"scaffolod"           ,"we never use"];
   List option2 = ["Pop language"      ,"poem"           ,"scren"          ,"return Widget"           ,"stateElement()"      ,"animation time"];
   List option3 = ["objective language","oop language"   ,"os version"     ,"call createElement "     ,"setState()"          ,"Rendering Time"];
   List option4 = ["oop language"      ,"pop language"   ,"hardware"       ,"execute code"            ,"stateLessWidget()"   ,"when no change in screen"];
   List sol = [false ,false , false ,false, false ,false];



   List CorrectAns = ["dart framework",
                       "oop language",
                       "scren",
                       "call build method",
                       "stateElement()",
                       "when no change in screen"];



 

  void _Counter_increment(){
      _counter++ ;
  }
 
 Color isColor(String option){

   if(option == CorrectAns[_counter]){

      return Colors.green ;
   }
   else{
     return Colors.red ;
   }
 }
 
 


  void  markss(int _marks){

  if(_marks>(quiz.length-2)){
      reply = "Greate Work";
  }
  else if(_marks>(quiz.length/2)){
      reply = "medium performance";
  }
  else{
    reply = "Need Of Performance";
  }
 }


  

  Widget build(BuildContext context){

    return MaterialApp(
        title: "Quiz-App",
        home: Scaffold(   
          appBar: AppBar(  
            leading: const Icon(Icons.quiz),
            title: const Text("Quiz-App"),
            centerTitle: true,
            actions: const [
               Icon(Icons.laptop),
              SizedBox(width: 35,)
            ],
        
          ),
          body: Column(

            children: [
              SizedBox(height: 25,),

              Text("QUIZ[ ${_counter+1} /6] , SOLVE[${solve}/10]",style:const  TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              
              const SizedBox(height: 25,),
              Container(
                
                width: double.infinity,
                decoration: BoxDecoration(  
                  color: Color.fromARGB(255, 130, 190, 237),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color:Colors.black , width: 2)
                  
                  ), 

                  child: Text("${quiz[_counter]} ",textAlign: TextAlign.center, style: const TextStyle(fontSize: 25,),),   
                ),
                 const SizedBox(height: 25,),

               
                Container(
                 
                  height: 250,
                  decoration: BoxDecoration(
                     color: Color.fromARGB(255, 213, 227, 238),
                    border: Border.all(color: Colors.black,width: 2)

                  ),
                  child: Column(
                    children: [
               SizedBox(height: 10,),



               
              
                Container(
          
                width: double.infinity,
                color: col?isColor(option1[_counter]):Colors.white ,
                child:
                TextButton(onPressed: (){
                  setState(() {
                    
                    if(option1[_counter]==CorrectAns[_counter]){
                      _marks++ ;
                    }
                    if(_counter<=quiz.length-1 && sol[_counter]==false){
                     solve++ ;
                      sol[_counter] = true ;
                     col = true ;
                       
                    }
                     
                   
                  
                  });
                } ,
                     child: Text(" 1) ${option1[_counter]}",style: TextStyle(fontSize: 20,color: Colors.black)), 
                  )),
                SizedBox(height: 10,),

                Container(
                  width: double.infinity,
                  color: col?isColor(option2[_counter]):Colors.white,
                
                child:
                TextButton(onPressed: (){
                  
                  setState(() {
                   
                    if(option2[_counter]==CorrectAns[_counter]){
                      _marks++ ;
                    }

                    if(_counter<=quiz.length-1 && sol[_counter]==false){
                      solve++ ;
                      sol[_counter] = true ;
                      col = true ;
                    }
                    
                   
                  });
                } ,
                 
                child: Text(" 2) ${option2[_counter]}",style: TextStyle(fontSize: 20,color: Colors.black)),

                )),
                
                
                SizedBox(height: 10,),

                Container(
                  color: col?isColor(option3[_counter]):Colors.white,
                  width: double.infinity,
                  
                  child:
                TextButton(onPressed: (){ 

                  setState(() {
                    
                    if(option3[_counter]==CorrectAns[_counter]){
                      _marks++ ;
                    }
                    if(_counter<=quiz.length-1 && sol[_counter]==false){
                      solve++ ;
                      sol[_counter] = true ;
                     col = true ;
                      

                    }
                   
                   
                   
                   
                  });
                }, 
                child: Text(" 3) ${option3[_counter]}",style: TextStyle(fontSize: 20,color: Colors.black)),

                )),

              SizedBox(height: 10,),

                Container(
                color: col?isColor(option4[_counter]):Colors.white,
                width: double.infinity,
                child:
                TextButton(onPressed: (){

                  setState(() {
                    
                   
                    if(option4[_counter]==CorrectAns[_counter]){
                      _marks++ ;
                    }

                    if(_counter<=quiz.length-1  && sol[_counter]==false){
                      solve++ ;
                      sol[_counter] = true ;
                       col = true ;
                    }
                    
                  
                  }
                  );
                }, 
                
                child: Text(" 4) ${option4[_counter]}", style: TextStyle(fontSize: 20,color: Colors.black),),

                )),
                    ],
                  ),
                ),
        
               

              SizedBox(height: 15,),
              

              Container(

                color: preview?Color.fromARGB(255, 212, 230, 244):Colors.blue,
                child: 
              
                TextButton(onPressed: (){
                setState(() {
                  
                 if(_counter==quiz.length-1 && solve == quiz.length){

                   Navigator.push( context, MaterialPageRoute(builder:(context){
                     return SubMit(_marks);

                   } ) );
                   _counter2 = quiz.length ;
                  

                 }
               
                });
              } ,      
              child:  const  Text("SUBMIT QUIZ",style:TextStyle(fontSize: 20,color: Colors.white) ,)),

              ),

              SizedBox(height: 15,),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                FloatingActionButton(
                  onPressed:(){
                    setState(() {
                     if(_counter>0){
                      _counter-- ;
                     }

                    });
                  },
                  child: Icon(Icons.arrow_back),
                  ),  


                 Container(
                color: preview ?const Color.fromARGB(255, 7, 132, 235): Color.fromARGB(255, 220, 239, 253),
                child:
                TextButton(onPressed: (){
                setState(() {
                   if(_counter2==quiz.length){
                        col = true ;
                        _counter = 0 ;
                        scoreColor = Colors.black;
                         markss(_marks);
                      }


                  
                });
              } ,      
              child:  const  Text("View Score ",style:TextStyle(  
                  fontSize: 20,
                  color: Colors.white,
                  ),
                  ) ),),

              FloatingActionButton(
                  onPressed:(){
                    setState(() {
                      
                      if(_counter2==quiz.length && _counter<quiz.length-1){
                        _counter++ ;
                        col = true ;
                      }
                      else if(_counter<quiz.length-1){
                          col = false ;
                         _counter++ ;
                      }
                    });
                   
                  },
                  child: Icon(Icons.forward),
                  ), 

                ],
              ),  

              Text("${_marks}/10", style: TextStyle(color:scoreColor,fontSize: 30 ),),

              Text(reply,style: TextStyle(fontSize: 35,color: Colors.red,fontWeight: FontWeight.bold),)

            ],

          ) ,
        ),
      );
  }
}