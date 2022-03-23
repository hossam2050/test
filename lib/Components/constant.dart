import 'package:flutter/material.dart';

// App Colors 
Color primaryColor = Color(0xFFF3F4FA);
Color whiteColor = Colors.white;
Color redColor = Color(0xFFFF3C1C);
Color transperentColor = Colors.transparent;
Color mischkaColor = Color(0xFFCDCFD8);
Color sharkColor = Color(0xFF282829);

//App Datetime
DateTime selectedDate = DateTime.now();
DateTime selectedTime = DateTime.now();
DateTime dateTimeNow = DateTime.now();

Duration? diff;
var hourValue = 12;
var minValue = 30;
DateTime time = DateTime(0);

//App Integers

int currentIndex =1;
int stepperCurrentIndex =1;
int focusedIndex = -1;
int hours = 0;
int weight = 0;

//App Styles

TextStyle headerText = const TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.bold
  );
 
 TextStyle normalText = const TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.normal
  );

  TextStyle selectedText = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.normal
  );

  TextStyle badgeText = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.bold,
  color: redColor
  );

  TextStyle unSelectedText = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.normal,
  color: mischkaColor
  );
  

  //App Bools
  bool selected = false;


  //App Models

  List<String> deliveryTimes = ["Express","Next Day","Custom"];
  List<bool> selections = List.generate(3, (index) => false);


//App Theme 
ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  primaryColorLight:whiteColor,
  primaryColor: primaryColor,
  selectedRowColor: redColor,
  unselectedWidgetColor: mischkaColor,
);


const String btngan = "";
