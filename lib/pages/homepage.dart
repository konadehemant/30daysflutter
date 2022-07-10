import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("CatlogApp"),
      ),
      body: Center(
        child: Container(
          child: Text("this is Homepage"),
        ),
      ),

    );
  }
}