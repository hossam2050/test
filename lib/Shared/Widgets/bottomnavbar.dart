import 'package:flutter/material.dart';
import 'package:flutter_test_application/Components/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({ Key? key }) : super(key: key);
  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (index){
           setState(() {
             currentIndex = index;
           });
        },
        currentIndex: currentIndex,
        selectedItemColor:Theme.of(context).selectedRowColor,
        items:const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.solidClipboard),
        label: "History",
           ),
        BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.box),
        label: 'Delivery',
         ),
        BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.user),
        label: 'Profile',
         ),
        ]
      );
  }
}