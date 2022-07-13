import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget{



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context){
    return Scaffold(
      drawer: MyDrawer(),
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