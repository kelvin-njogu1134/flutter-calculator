import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // ✅ const
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // ✅

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key}); 

  Widget button(String text){

    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            backgroundColor: const Color.fromARGB(255, 232, 198, 87),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12)
            ),
            
          ),
          onPressed: (){
            print(text);
          },
          child:Text(
            text,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ) 
          
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calculator",
        style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 30.0,
        ),
        ),
        backgroundColor: const Color.fromARGB(255, 240, 240, 114),
        actions: [
          Icon(Icons.functions)
        ],
       leading: Icon(Icons.calculate),
      ),
      body: Container(
      
        child: Column(
          children: [
            Container(
              height: 200,
              width:double.infinity,
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(16),
              color: Colors.black,
              child: Text("0",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
                
              ),
              ),
            ),
            Expanded(
              child: Container(

                color: const Color.fromARGB(255, 232, 232, 232),
                child: Column(
                  children: [
                     Row(
                      children: [
                          button("7"),
                          button("8"),
                          button("9"),
                          button("÷"),

                      ],
                     ),

                     Row(
                      children: [
                          button("4"),
                          button("5"),
                          button("6"),
                          button("×"),
                      ],
                     ),
                     Row(
                      children: [
                          button("1"),
                          button("2"),
                          button("3"),
                          button("-"),
                      ],
                     ),
                     Row(
                      children: [
                      button("C"),
                      button("0"),
                      button("="),
                      button("+"),
                      ],
                     )
                  ],
                 
                    
                ),
              ),
            )
          ],
        ),
      ),
         );
  }
}