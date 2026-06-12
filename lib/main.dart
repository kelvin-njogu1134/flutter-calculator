import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // ✅ const
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // ✅

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // ✅ const
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key}); // ✅

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
                color: const Color.fromARGB(255, 128, 82, 82),
                child: Column(
                  children: [
                     IconButton(
                      icon: Icon(
                        Icons.backspace
                      ),
                      onPressed: ()
                      {
                        print("Delete");
                      },
                     ),
                     IconButton(
                      icon: Icon(
                        Icons.backspace
                      ),
                      onPressed: ()
                      {
                        print("Delete");
                      },
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