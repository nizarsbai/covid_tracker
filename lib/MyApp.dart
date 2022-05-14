import 'package:flutter/material.dart';

import 'screens/Login.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CovidApp',
    theme: ThemeData(
    primarySwatch: Colors.pink,
    ),
    home: const Login(),
    debugShowCheckedModeBanner: false,
    );
  }
}
