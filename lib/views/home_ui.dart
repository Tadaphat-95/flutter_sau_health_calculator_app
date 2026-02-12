import 'package:flutter/material.dart';
import 'package:flutter_sau_health_calculator_app/views/about_ui.dart';
import 'package:flutter_sau_health_calculator_app/views/bmi_ui.dart';
import 'package:flutter_sau_health_calculator_app/views/bmr_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  // สร้างตัวแปรสำหรับเก็บสถานะของหน้าปัจจุบัน
  int barItemIndex = 1;

// สร้างตัวแปรสำหรับเก็บ UI ที่จะแสดงในแต่ละ bar item
  List showUi = [
    BmiUi(),
    AboutUi(),
    BmrUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Body Health Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (paremValue) {
          setState(() {
            barItemIndex = paremValue;
          });
        },
        currentIndex: barItemIndex,
        selectedItemColor: Colors.deepOrange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heartCircleBolt),
            label: 'BMR',
          ),
        ],
      ),
      body: showUi[barItemIndex],
    );
  }
}
