import 'package:finance_app/screens/nav.dart';
import 'package:finance_app/screens/statistics.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:Home(),
      home:Nav(),
    );
  }
}