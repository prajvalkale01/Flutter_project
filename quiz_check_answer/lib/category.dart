import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title:const  Text("Quiz App"),
        centerTitle: true,

      ),
      body:  Column(  
        children: [ 
          Row( 
            children: [
                Expanded(
                  child: Container(
                    height: 240,
                    width: 250,
                  decoration: BoxDecoration(  
                    color: Colors.red,
                    
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:  Image.network(""),
                  
                                ),
                ),
               Expanded(
                 child: Container(
                  decoration: BoxDecoration(  
                      image:const DecorationImage(image:NetworkImage("")),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Image.network(""),
                 
                               ),
               ),
             
            ],
           ),
          Row(
            children: [
               Container(
                decoration: BoxDecoration(  
                    image:const DecorationImage(image:NetworkImage("")),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
               Container(
                decoration: BoxDecoration(  
                    image:const DecorationImage(image:NetworkImage("")),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              

            ],
          ),
          Row(children: [
            
               Container(
                decoration: BoxDecoration(  
                    image:const DecorationImage(image:NetworkImage("")),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
               Container(
                decoration: BoxDecoration(  
                    image:const DecorationImage(image:NetworkImage("")),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

          ],),
          Row(
            children: [

              Container(
                decoration: BoxDecoration(  
                    image:const DecorationImage(image:NetworkImage("")),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
               Container(
                decoration: BoxDecoration(  
                    image:const DecorationImage(image:NetworkImage("")),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

            ],
          ),
        
        
        ],
      ),
    );
   
  }
}