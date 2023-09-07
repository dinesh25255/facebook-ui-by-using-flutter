import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/dashboard_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xffFFFFFF),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home:  const DashBoardPage(),
    );

  }
}

