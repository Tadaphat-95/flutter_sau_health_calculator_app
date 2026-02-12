import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 220),
              Text(
                'Body Health Calculator ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Image.asset(
                'assets/images/Calculator.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 40),
              Text(
                'คำนวณค่าดัชนีมวลกาย (BMI)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'คำนวณอัตราการเผาผลาญพลังงานพื้นฐาน (BMR)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 150),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/4/47/Logosau-02.png',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              Text(
                '\nDeveloped by NinniN SAU 2026',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
