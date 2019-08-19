import 'package:flutter/material.dart';
import './screens/loginScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "log me in",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
