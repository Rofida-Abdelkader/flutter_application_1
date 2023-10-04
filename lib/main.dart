import 'package:flutter/material.dart';

//import 'modules/home/home_screen.dart';
import 'layout/home_layout.dart';
import 'modules/login/login_screen.dart';
//import 'modules/messenger/messengerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Application',
      home: HomeLayout(),
    );
  }
}
