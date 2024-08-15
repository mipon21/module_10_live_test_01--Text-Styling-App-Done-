// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    mySnackbar(String message){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.blueAccent,
          )
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Styling App"),
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Flutter Text Styling",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "Experiment with text styles",
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height: 5,),
              TextButton(
                onPressed: () {
                  mySnackbar("You clicked the button!");
                },
                child: Text("Click Me", style: TextStyle(color: Colors.black),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome to", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Text("Flutter!", style: TextStyle(fontSize: 20, color: Colors.blueAccent, fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

