import 'package:flutter/material.dart';
import 'package:login_page/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home:LoginScreen() ,);
  }
}
