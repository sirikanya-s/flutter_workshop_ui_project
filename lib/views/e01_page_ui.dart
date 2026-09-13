import 'package:flutter/material.dart';

class E01PageUi extends StatelessWidget {
  const E01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/img_orange1.png',
              width: 500,
            )
          ],
        ),
      ),
    );
  }
}
