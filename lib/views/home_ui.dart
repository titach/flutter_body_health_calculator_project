import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project/views/about_ui.dart';
import 'package:flutter_body_health_calculator_project/views/bmi_ui.dart';
import 'package:flutter_body_health_calculator_project/views/bmr_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  //สร้างตัวแปรเก็บ index ของรายการที่เลือก
  int _currentIndex = 1;

  // สร้างตัวแปรแบบ list
  List subViewShow = [
    BmiUI(),
    AboutUI(),
    BmrUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfffa75af),
        title: Text(
          'Body ว้าว',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfffa75af),
        onTap: (value) {
          // โค้ดอะไรก็ตามที่มีผลต่อการแสดงผลบนหน้าจอ
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        unselectedItemColor: Color(0xfffacfe2),
        selectedItemColor: Color(0xfffa2883),
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.weightScale,
            ),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.houseMedical,
            ),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.heartPulse,
            ),
            label: 'BMR',
          ),
        ],
      ),
      body: subViewShow[_currentIndex],
    );
  }
}
