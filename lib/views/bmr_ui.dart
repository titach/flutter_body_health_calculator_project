import 'package:flutter/material.dart';

class BmrUI extends StatefulWidget {
  const BmrUI({super.key});

  @override
  State<BmrUI> createState() => _BmrUIState();
}

class _BmrUIState extends State<BmrUI> {
  //สร้างตัวแปรเก็บ index ของรายการที่เลือก
  int _currentIndexMale = 0;
  int _currentIndexFemale = 0;

  // สร้างตัวแปรแบบ list
  List bgButtonSexShow = [
    Colors.white,
    Color(0xfffa75af),
    Colors.grey,
    Color(0xfffacfe2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent[50],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'คำนวณหาอัตราการเผาผลาญที่',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'ร่างกายต้องการ (BMR)',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/bmr.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.width * 0.3,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'เพศ',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentIndexMale = 1;
                          _currentIndexFemale = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.35,
                          MediaQuery.of(context).size.width * 0.12,
                        ),
                        backgroundColor: bgButtonSexShow[_currentIndexMale],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'ชาย',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                          color: bgButtonSexShow[_currentIndexMale + 2],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentIndexFemale = 1;
                          _currentIndexMale = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.35,
                          MediaQuery.of(context).size.width * 0.12,
                        ),
                        backgroundColor: bgButtonSexShow[_currentIndexFemale],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'หญิง',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                          color: bgButtonSexShow[_currentIndexFemale + 2],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'น้ำหนัก (kg.)',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffffadd1),
                      ),
                    ),
                    hintText: 'กรอกน้ำหนักของคุณ',
                    fillColor: Color(0xffffadd1),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ส่วนสูง (cm.)',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffffadd1),
                      ),
                    ),
                    hintText: 'กรอกส่วนสูงของคุณ',
                    fillColor: Color(0xffffadd1),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'อายุ (ปี)',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffffadd1),
                      ),
                    ),
                    hintText: 'กรอกอายุของคุณ',
                    fillColor: Color(0xffffadd1),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.4,
                      MediaQuery.of(context).size.width * 0.12,
                    ),
                    backgroundColor: Color(0xfffa75af),
                  ),
                  child: Text(
                    'คำนวณ BMR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.4,
                      MediaQuery.of(context).size.width * 0.12,
                    ),
                    backgroundColor: Color(0xfffacfe2),
                  ),
                  child: Text(
                    'ล้างข้อมูล',
                    style: TextStyle(
                      color: Color(0xfffa75af),
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.23,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xfffffcbf),
                        Color(0xffffadd1),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BMR',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '0.00',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffa75af),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'kcal/day',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
