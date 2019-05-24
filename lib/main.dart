import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/Home.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme:ThemeData(
        primaryColor: new Color(0xffe4405f),
        accentColor: new Color(0xffe4405f),
  
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white     
        ),
        textTheme: TextTheme(
          title: new TextStyle(color: Colors.white, fontSize: 16.0,fontFamily: "Aveny"),
          body1: new TextStyle(color: Colors.black),
          button: new TextStyle(color: Colors.white),
        ),
        bottomAppBarColor: Colors.white,
       
      ),
      home: Home(),
          );
        }
      }
      
    

