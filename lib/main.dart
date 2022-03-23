import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test_application/Components/constant.dart';
import 'package:flutter_test_application/layout/layout.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: primaryColor, // navigation bar color
    statusBarColor: sharkColor.withOpacity(0.6),
    statusBarBrightness: Brightness.dark // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: const Delievery(),
    );
  }
}

