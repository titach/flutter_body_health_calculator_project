import 'package:flutter/material.dart';

class BmiUI extends StatefulWidget {
  const BmiUI({super.key});

  @override
  State<BmiUI> createState() => _BmiUIState();
}

class _BmiUIState extends State<BmiUI> {
  // สร้างตัวควบคุม TextField
  TextEditingController weightCtrl = TextEditingController();
  TextEditingController heightCtrl = TextEditingController();

  // สร้างตัวแปรแสดงค่า BMI กับการแปรผล
  String showBMI = '0.00';
  String showResult = 'การแปรผล';

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
                  controller: weightCtrl,
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
                  controller: heightCtrl,
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
                  onPressed: () {
                    // Validate input ก่อนแล้วค่อยคำนวณและแสดงผล
                    if (weightCtrl.text.isEmpty == true) {
                      // แสดงข้อความเตือนด้วย SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('กรุณากรอกน้ำหนักของคุณด้วย !!!'),
                          backgroundColor: Color(0xfffa2883),
                          duration: Duration(seconds: 2),
                        ),
                      );

                      return;
                    }
                    // ตรวจสอบส่วนสูง
                    if (heightCtrl.text.isEmpty == true) {
                      // แสดงข้อความเตือนด้วย SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('กรุณากรอกส่วนสูงของคุณด้วย !!!'),
                          backgroundColor: Color(0xfffa2883),
                          duration: Duration(seconds: 2),
                        ),
                      );

                      return;
                    }
                    // คำนวณ BMI และแสดงผลพร้อมแปรผล
                    // แปลงน้ำหนักและส่วนสูงเป็นตัวเลขก่อน
                    double weight = double.parse(weightCtrl.text);
                    double height = double.parse(heightCtrl.text) / 100;
                    double bmi = weight / (height * height);
                    //นำค่า BMI ที่คำนวณได้ไปแสดงพร้อมกับการแปรผล
                    // *** จำไว้ว่าโค้ดคำสั่งการทำงานที่มีผลต่อการแสดงผลต้องเขียนอยู่ภายใต้คำสั่ง setState() ***
                    setState(() {
                      // เอาค่า MBI ที่คำนวณได้ไปกำหนดให้กับตัวแปร showBMI แต่ต้องเป็น string และกำหนดทศนิยมก่อน
                      showBMI = bmi.toStringAsFixed(2);
                      // แปรผล BMI
                      if (bmi < 18.5) {
                        showResult = 'น้ำหนักต่ำกว่าเกณฑ์';
                      } else if (bmi < 22.9) {
                        showResult = 'น้ำหนักสมส่วน';
                      } else if (bmi < 24.9) {
                        showResult = 'น้ำหนักเกิน';
                      } else if (bmi < 29.9) {
                        showResult = 'โรคอ้วนระดับ 1';
                      } else {
                        showResult = 'โรคอ้วนระดับ 2';
                      }
                    });
                  },
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
                  onPressed: () {
                    // เคลียร์ข้อมูล ให้หน้าจอเหมือนกับตอนที่เปิดเข้ามาใหม่
                    setState(() {
                      weightCtrl.text = '';
                      heightCtrl.text = '';
                      showBMI = '0.00';
                      showResult = 'การแปรผล';
                    });
                  },
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
                        showBMI,
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
                        showResult,
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
