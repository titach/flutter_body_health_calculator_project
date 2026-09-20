import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project/views/home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  
  @override
  void initState() {
    // หน่วงเวลา 3 วินาทีแล้วเปิดไปหน้า HomeUI()
    Future.delayed(
      // ระยะเวลาที่หน่วง
      Duration(
        seconds: 3,
      ),
      // เมื่อครบแล้วให้ทำอะไร -> เปิดไปหน้า HomeUI() แบบย้อนกลับไม่ได้
      (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder:(context) => HomeUI(),
          ),
        );
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffadd1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/calculate.png',
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Body Health Calculator',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.028,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Color(0xfffa2883),
                    offset: Offset(3, 2),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: MediaQuery.of(context).size.width * 0.015,
              strokeCap: StrokeCap.round,
            ),
          ],
        ),
      ),
    );
  }
}
