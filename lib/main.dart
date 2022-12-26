import 'package:flutter/material.dart';
import 'package:todo/screens/homepage/homepage_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ToDo List',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.red,
            appBarTheme: AppBarTheme(color: Colors.red, elevation: 0)),
        home: const HomepageScreen());
  }
}
