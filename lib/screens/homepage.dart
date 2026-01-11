import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        title: Text("Welcome",style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.blue,
            border: Border.all(
              color: Colors.black,
              width: 3,
            )
          ),
          child: Text("      Ayush Is \n      Learning \n SharedPreferences",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontStyle: FontStyle.italic
          ),),
        ),
      ),
    );
  }
}