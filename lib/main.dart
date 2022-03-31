// ignore_for_file: prefer_const_constructors

import 'package:assignment5/languages.dart';
import 'package:assignment5/screens/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

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
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: Languages(),
        locale: Locale('en', 'US'),
        fallbackLocale: Locale('en', 'US'),
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
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
