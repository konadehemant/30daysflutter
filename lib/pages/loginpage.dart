// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: Column(
          children:<Widget> [
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 30,0, 0),
              child: Image(image: AssetImage("assets/images/undraw 1.png"))),
              SizedBox(
                height: 30,
              ),
            Text("WELCOME",style: TextStyle(
              color: Colors.indigo,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username"
                ),
              ),
            ),
            SizedBox(height: 20,),
             Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20
              ),
               child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Pasword",
                  labelText: "pasword"
                ),
            ),
             ),
             SizedBox(height: 50),

             Container(
              
               child: ElevatedButton(onPressed: (){
                print("pressed");
               }, 
               child: Text("login")),
             )
          
      
          ],
        ),
      )
    );
  }
}