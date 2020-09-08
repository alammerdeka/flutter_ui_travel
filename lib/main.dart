import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
        accentColor: Colors.indigo[100],
        backgroundColor: Colors.indigo[900],
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
