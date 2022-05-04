import 'package:dr_system/screens/home_screen.dart';
import 'package:dr_system/screens/registration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "login",
    routes: {
      'login': (context) =>  HomeScreen(),
      'registration': (context) =>  Registration()
    }
  ));
}

