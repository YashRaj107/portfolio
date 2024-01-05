import 'package:flutter/material.dart';
import 'Pages/card.dart';
import 'Pages/form2.dart';
import 'Pages/formnew.dart';
import 'Pages/CDlandingpage.dart';
import 'Pages/loginpage.dart';
import 'Pages/BusinessCardHolder.dart';

void main() {
  runApp(const Business());
}

class Business extends StatelessWidget {
  const Business ({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BusinessCard',
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(color: Colors.white),
      ),
      home:  loginpage(),
      initialRoute: '/loginpage',
      routes: {
        '/loginpage': (context) => loginpage(),
        '/CardDetails': (context)=> CardDetails(),
        '/form1': (context)=> form1(),
        '/form2':(context)=> form2(),

      },
    );
  }
}



