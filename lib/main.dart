import 'package:flutter/material.dart';

//-------------------------------------
void main() {
  runApp( 
    //เรียกใช้งานคลาสที่เรียกใช้ Widget หลักของ App 
    FlutterWorkshopUIProject(),
  );
}

//--------------------------------------
// คลาสเรียกใช้ Widget หลักของ App -> MaterialApp 
// คีย์ลัด stf
class FlutterWorkshopUIProject extends StatefulWidget {
  const FlutterWorkshopUIProject({super.key});

  @override
  State<FlutterWorkshopUIProject> createState() => _FlutterWorkshopUIProjectState();
}

class _FlutterWorkshopUIProjectState extends State<FlutterWorkshopUIProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
