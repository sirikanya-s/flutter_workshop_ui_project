// ignore_for_file: unused_import, camel_case_types

import 'package:material_ui/material_ui.dart';
import 'e01_page_ui.dart';
import 'e02_page_ui.dart';
import 'e03_page_ui.dart';
import 'e04_page_ui.dart';
import 'e05_page_ui.dart';
import 'e06_page_ui.dart';

void main() {
  runApp(const MyApp());
}

class runApp {
  runApp(MyApp myApp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      title: 'Orange ส้ม',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const E01PageUI(),
    );
  }
}

class Widget {
}