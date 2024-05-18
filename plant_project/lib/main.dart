import 'package:flutter/material.dart';
import 'package:plant_project/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color(0xffFBF7F8) ,
     
      body: 
      
      Column(
        children: [
          const SizedBox(height: 30,),
          
        
           Image.asset("assets/main.png"),
          
        
         
      
           const  Column(  
             children: [ 
              SizedBox(
                width: 250,
                child: Text( "Enjoy your",style: TextStyle(fontSize: 35 , fontWeight: FontWeight.w400),)),

              Row(  
                mainAxisAlignment: MainAxisAlignment.center,
                children: [  
                  SizedBox(
                    width: 250,
                    child: Text("life with plants", style: TextStyle(fontSize: 35)))
                ],
              )
             ],

            ),

            Container(
              margin: const EdgeInsets.all(50),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(  
                gradient:const  LinearGradient(
                  colors:  [
                    Color(0xff3E6618),
                    Color(0xff7CB446)
                  ]
                ),
                borderRadius: BorderRadius.circular(10),

                boxShadow: const [ 
                  BoxShadow(  
                    color: Colors.black,
                    spreadRadius: 1 ,
                    blurRadius: 3,
                    offset: Offset(1,1)
                  )
                ]
              ),
              child: TextButton(onPressed: (){
                Navigator.push(context , MaterialPageRoute(builder: (context){
                  return  Login();
                }));
              
              },
              
               child:const  Text("Get Started  >", style: TextStyle(color: Colors.white,fontSize: 20),)),
            )
          
        ],
      ),
    );
  }
}
