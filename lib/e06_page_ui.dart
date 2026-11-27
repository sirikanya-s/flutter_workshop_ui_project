import 'package:flutter/material.dart';
import 'e02_page_ui.dart';

class E06PageUI extends StatefulWidget {
  const E06PageUI({super.key});

  @override
  State<E06PageUI> createState() => _E06PageUIState();
}

class _E06PageUIState extends State<E06PageUI> {
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
                    'assets/images/img_orange2.png', // หากเก็บไฟล์ไว้ใน assets/ โดยตรง ให้ตัด images/ ออก
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 45,
                  left: 16,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
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
                  // 2. หัวข้อ Create New Password
                  const Text(
                    'Create New Password',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // 3. ข้อความ Enter new password
                  const Text(
                    'Enter new password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // 4. ช่องกรอก Enter New password (กรอบสีส้มตามแบบ)
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter New password',
                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFF28C0F)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFF28C0F)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFF28C0F), width: 1.5),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 5. ช่องกรอก Confirm password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
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

                  // 6. ปุ่ม Submit สีส้ม
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
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const E02PageUI(),
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}