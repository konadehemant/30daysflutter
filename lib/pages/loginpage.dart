// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedbutton = false;
  final _formKey = GlobalKey<FormState>();



moveToHome(BuildContext context)async{
  if (_formKey.currentState!.validate()){
setState(() {
                      changedbutton = true ;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    await Navigator.pushNamed(context, MyRoutes.homePage);
                    setState(() {
                      changedbutton = false ;
                    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: Form(
          key: _formKey,
          child: Column(
            children:<Widget> [
              Container( //image container
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                padding: EdgeInsets.fromLTRB(0, 30,0, 0),
                child: Image(image: AssetImage("assets/images/undraw 1.png"))),
                SizedBox(
                  height: 30,
                ),
              Text("WELCOME $name",style: TextStyle(
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
                  validator: (value){
                    if(value!.isEmpty){
                      return "username can not be empty";
                    }
                    return null;
                  },
                  onChanged: (value){
                    name = value;
                    setState(() {});
                  },
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
                  validator: (value){
                    if(value!.isEmpty) {
                      return "Pasword can not be empty";
                    }
                    if (value.length < 6){
                      return "lenght at least 6";
                    }
                     return null;
                  },
              ),
               ),
               SizedBox(height: 50),
        
               Material(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(changedbutton ? 40 :10),
                 child: InkWell(
                  onTap: () => moveToHome(context),
                   child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    alignment: Alignment.center,
                    
                    height: 50,
                    width:changedbutton? 50 : 100,
                    child:changedbutton?Icon(Icons.done,color: Colors.white,): Text("Login",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold ),),
                    
                   ),
                 ),
               ),
        
              //  Container(
                
              //    child: ElevatedButton(onPressed: (){
              //     Navigator.pushNamed(context, MyRoutes.homePage);
              //    }, 
              //    child: Text("login")),
              //  )
            
              
            ],
          ),
        ),
      )
    );
  }
}