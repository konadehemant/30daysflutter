import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/loginpage.dart';
import 'pages/homepage.dart';
void  main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
   
      theme: ThemeData(primarySwatch: Colors.cyan),
      routes: {,
        "/" :(context) => LoginPage(),
        "/login" :(context) =>  LoginPage(),
        "/home" :(context) => HomePage()
      }

    );
  }
}
