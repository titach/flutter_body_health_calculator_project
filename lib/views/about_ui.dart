import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent[50],
      body: Stack(
        children: [
          //ชั้นที่ 1 ของ stack
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Body Health Calculator',
                  style: TextStyle(
                    color: Color(0xfffa75af),
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/calculate.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.width * 0.3,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'คำนวณหาค่าดัชนีมวลกาย (BMI)',
                  style: TextStyle(
                    color: Color(0xfffa75af),
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'คำนวณหาอัตราการเผาผลาญพลังงานของร่างกาย (BMR)',
                  style: TextStyle(
                    color: Color(0xfffa75af),
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //ชั้นที่ 2 ของ stack
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/saulogo.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.width * 0.15,
                  fit: BoxFit.cover,
                ),
                Text(
                  '© 2026 SAU. All rights reserved.',
                ),
                Text(
                  'Create by SAU Software Development Team',
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
