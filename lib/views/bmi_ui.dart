import 'package:flutter/material.dart';

class BmiUI extends StatefulWidget {
  const BmiUI({super.key});

  @override
  State<BmiUI> createState() => _BmiUIState();
}

class _BmiUIState extends State<BmiUI> {
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
                  'คำนวณหาค่าดัชนีมวลกาย (BMI)',
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
                  'assets/images/bmi.png',
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
                    'คำนวณ BMI',
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
                        'BMI',
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
                        'การแปรผล',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
