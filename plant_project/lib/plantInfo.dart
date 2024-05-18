import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlantInfo extends StatefulWidget {
  const PlantInfo({super.key});

  @override
  State<PlantInfo> createState() => _PlantInfoState();
}

class _PlantInfoState extends State<PlantInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [  
          SizedBox(height: 30,),
          
          
           IconButton(  
              onPressed: (){
                 Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
        
          Container(
            margin: EdgeInsets.only(left: 100),
            child: Image.asset("assets/homePage2.png")),

            SizedBox(height: 30,),
            
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                Container( 
                  height: 10,
                  width: 10,
                  decoration:BoxDecoration(  
                  color: Color(0xff3E6618), 
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
                SizedBox(width: 3,),
                 Container( 
                  height: 10,
                  width: 10,
                    decoration:BoxDecoration(  
                  color: Color(0xffC5D6B5), 
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
                SizedBox(width: 3,),
                 Container( 
                  height: 10,
                  width: 10,
                    decoration:BoxDecoration(  
                  color: Color(0xffC5D6B5), 
                    borderRadius: BorderRadius.circular(5)
                  ),
                )
          
              ],),

              Container(  
                margin: EdgeInsets.only(left: 30,top: 30,bottom: 10),
                child: Text("Snack plant ", style: TextStyle(fontSize: 25),),

              ),
              Container(
                width: 320,
                margin: EdgeInsets.only(left: 30),
                child: Text("Plansts make your life with minimal and happy love the plants more and enjoy life.")
                ),

                Container( 
                  margin: EdgeInsets.only(left: 30 , top: 20), 
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: 320,
                  decoration: BoxDecoration(  
                    color: Color(0xff76984B),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Column(  

                    children: [  

                      Row(  
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [  
                          Column( 
                            children: [ 
                              Image.asset("assets/height.png"),
                              SizedBox(height: 10,),
                              Text("Height",style: TextStyle(color: Colors.white),),
                              Text("30cm-40cm",style: TextStyle(color: Colors.white),)

                            ],
                          ),
                          
                          Column( 
                            children: [ 
                              Image.asset("assets/therma.png"),
                               SizedBox(height: 10,),
                              Text("Temperature",style: TextStyle(color: Colors.white),),
                              Text("20'c - 25'c",style: TextStyle(color: Colors.white),)

                            ],
                          ),
                          Column(   
                            children: [ 
                              Image.asset("assets/pot.png"),
                               SizedBox(height: 10,),
                              Text("Pot",style: TextStyle(color: Colors.white),),
                              Text("Ciramic Pot",style: TextStyle(color: Colors.white),)

                            ],
                          ),

                        ],
                      ),
                      SizedBox(height: 20,),
                     Row(  
                      children: [ 
                        
                         Column(  
                          children: [ 

                           Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 140,
                            child: Text("Total Price ",style: TextStyle(color: Colors.white , fontSize: 18))),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 140,
                            child: Text("Rs 350 ",style: TextStyle(color: Colors.white , fontSize: 20))),

                          ],
                        
                        ),


                          Container(  
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                            color: Color(0xff67854A),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row( 
                            mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: [  
                              
                              Image.asset("assets/shopping2.png"),
                              
                              Text("Add to cart",style: TextStyle(color: Colors.white , fontSize: 20),)
                            ],
                          ),
                        )
                       
                        
                      ],
                    )

                    ],

                  ),
                ) ,


          
        ], 

      ),

    );
  }
}