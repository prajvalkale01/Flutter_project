
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_project/plantInfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFBF7F8) ,

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(  
            children: [  
              Row(children: [  
                Spacer(),
                  Image.asset("assets/home.png"),
          
              ],),
          
              Row(children: [ 
          
                Column(children: [  
          
                  Container(
                    margin:const EdgeInsets.only(left: 20),
                    width: 250,
                    child: const Text("Find  your ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
                  Container(
                      margin:const  EdgeInsets.only(left: 20),
                    width: 250,
                    child:const  Text("favorite plants ",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),))
          
                ],),
               
                Container( 
                  height: 70,
                  width: 70,
                  child: Image.asset("assets/bag.png"),
                )
              ],
              ),
          
              Container(  
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(  
                   color: Color(0xffCCE7B9),
                   borderRadius: BorderRadius.circular(10)
          
                ),
          
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [  
                   const Column(children: [ 
                      SizedBox(
                        width: 200,
                        child: Text("30% OFF ", style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),)),
                      SizedBox(
                        width: 200,
                        child: Text("02-23 April ", style: TextStyle(fontSize: 17 , color: Color(0xff000000), fontWeight: FontWeight.w300),))
                    ],  
          
                    ),
                    SizedBox(
                      height: 110,
                      width: 105,
                      child: Image.asset("assets/spiderr.png",fit: BoxFit.cover,))
          
                  ],
                )  
              ),
          
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
                SizedBox(width: 1,),
                 Container( 
                  height: 10,
                  width: 10,
                    decoration:BoxDecoration(  
                  color: Color(0xffC5D6B5), 
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
                SizedBox(width: 1,),
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
                margin: EdgeInsets.only(left: 20),
                width: double.infinity,
                child: Text("Indoor",style: TextStyle(fontSize: 20),),
              ),
          
              
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context , index){
                    return GestureDetector(
                       onTap: (){
                        Navigator.push(context , MaterialPageRoute(builder: (context){
                          return PlantInfo();
                        }));
                      },
                      child: Container( 
                        margin: EdgeInsets.all(10),
                        height: 190,
                        width: 141,
                        decoration: BoxDecoration(  
                          color: Colors.white ,
                          borderRadius: BorderRadius.circular(15)
                                      
                        ),
                        child: Column(  
                          children: [  
                            Image.asset("assets/homePage2.png"),
                           
                              const Text("Snake Plant" ,style: TextStyle(fontSize: 18),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,                          children: [
                              const Text("Rs 350",style: TextStyle(fontSize: 18, color: Color(0xff3E6618),fontWeight: FontWeight.bold),),
                              
                              Container(  
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(  
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200,
                                ),
                                child: Image.asset("assets/shopping.png"),
                              )
                            ],)
                                      
                          ],
                        ),
                      ),
                    );
                  }
                  ),
              ),
          
              Container(  
                margin: EdgeInsets.only(left: 20),
                width: double.infinity,
                child: Text("Outdoor",style: TextStyle(fontSize: 20),),
              ),
               SizedBox(
                height: 290,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context , index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context , MaterialPageRoute(builder: (context){
                          return PlantInfo();
                        }));
                      },
                      child: Container( 
                        margin: EdgeInsets.all(10),
                        height: 190,
                        width: 141,
                        decoration: BoxDecoration(  
                          color: Colors.white ,
                          borderRadius: BorderRadius.circular(15)
                                      
                        ),
                        child: Column(  
                          children: [  
                            Image.asset("assets/homePage2.png"),
                           
                              const Text("Snake Plant" ,style: TextStyle(fontSize: 18),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,                          children: [
                              const Text("Rs 350",style: TextStyle(fontSize: 18, color: Color(0xff3E6618),fontWeight: FontWeight.bold),),
                              
                              Container(  
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(  
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200,
                                ),
                                child: Image.asset("assets/shopping.png"),
                              )
                            ],)
                                      
                          ],
                        ),
                      ),
                    );
                  }
                  ),
              )
          
          
             
            ],
          ),
        ),


    );
  }
}