// ignore_for_file: prefer_const_constructors

import 'package:assignment5/screens/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 851),
      builder: () => MaterialApp(
        theme: ThemeData(
          fontFamily: 'Raleway',
          
        ),
        initialRoute: '/',
        routes: {
          '/home-page': (context) => HomePage(),
          '/second-page': (context) => SecondPage(),
        },
        home: HomePage(),
      ),
    );
  }
}
