import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/loginpage.dart';
import 'package:flutter_application_3/utils/routes.dart';
import 'pages/homepage.dart';
void  main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      themeMode: ThemeMode.light,

  
   
      theme: ThemeData(primarySwatch: Colors.cyan,
      appBarTheme: AppBarTheme(color: Colors.white,
      elevation: 0.0
      
      )
      ),
      routes: {
        "/" :(context) => HomePage(),
        MyRoutes.loginPage :(context) =>  LoginPage(),
        MyRoutes.homePage :(context) => HomePage()
      }

    );
  }
}
