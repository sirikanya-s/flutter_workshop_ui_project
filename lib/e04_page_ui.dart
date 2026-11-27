import 'package:flutter/material.dart';
import 'e03_page_ui.dart'; // เรียกใช้หน้า Register (Create Account)
import 'e06_page_ui.dart';

class E04PageUI extends StatelessWidget {
  const E04PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. ภาพ Header ด้านบน พร้อมปุ่มกดย้อนกลับ
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 320,
                  child: Image.asset(
                    'assets/images/img_orange2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 45,
                  left: 16,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context); // กดย้อนกลับไปหน้าเดิม
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 2. ข้อความหัวข้อ Forgot your password?
                  const Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // 3. ข้อความ Enter email address
                  const Text(
                    'Enter email address',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 4. ช่องกรอก Email
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // 5. ปุ่ม Send code สีส้ม
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF28C0F),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const E06PageUI(),
                          ),
                        );
                      },
                      child: const Text(
                        'Send code',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 140),
                  // 6. ข้อความด้านล่าง Don't have an Account? Create Account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an Account? ",
                        style: TextStyle(fontSize: 13, color: Colors.black87),
                      ),
                      GestureDetector(
                        onTap: () {
                          // เชื่อมไปยังหน้า Create Account (E03PageUI)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const E03PageUI(),
                            ),
                          );
                        },
                        child: const Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFFF28C0F),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}