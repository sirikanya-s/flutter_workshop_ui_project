import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e01_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

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
  State<FlutterWorkshopUIProject> createState() =>
      _FlutterWorkshopUIProjectState();
}

class _FlutterWorkshopUIProjectState extends State<FlutterWorkshopUIProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner ซ่อนป้าย Debug ที่ขึ้นบนหน้าจอ
      debugShowCheckedModeBanner: false,
      // กำหนดหน้าจอแรกของ App
      home: E01PageUi(),
      // กำหนด Theme ของ App โดยเฉพาะฟอนด์หลักของ App
      theme: ThemeData(
         textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme
         ),
        
      ),
    );
  }
}
