import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class E05PageUI extends StatefulWidget {
  const E05PageUI({super.key});

  @override
  State<E05PageUI> createState() => _E05PageUIState();
}

class _E05PageUIState extends State<E05PageUI> {
  // ตัวแปรนับเวลาถอยหลัง 30 วินาที
  int _secondsRemaining = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. ปุ่มย้อนกลับ และ หัวข้อ OTP Verification
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFDE8BA),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 36.0),
                        child: Text(
                          'OTP Verification',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // 2. รูปภาพคนนั่งทำงาน img_orange3
              Center(
                child: Image.asset(
                  'assets/images/img_orange3.png', // หากไฟล์อยู่ใน assets/ ให้ตัด images/ ออก
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 36),

              // 3. ข้อความ Enter OTP
              const Text(
                'Enter OTP',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),

              // 4. ข้อความ An 4 digit code has been sent to your email
              const Text(
                'An 4 digit code has been sent to your\nemail',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 24),

              // 5. ช่องกรอกรหัส OTP 4 ช่อง
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildOtpBox(first: true, last: false),
                  _buildOtpBox(first: false, last: false),
                  _buildOtpBox(first: false, last: false),
                  _buildOtpBox(first: false, last: true),
                ],
              ),

              const SizedBox(height: 24),

              // 6. ข้อความนับเวลาถอยหลัง 30 วินาที
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'You should recieve the OTP in ',
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                    children: [
                      TextSpan(
                        text: '$_secondsRemaining Second',
                        style: const TextStyle(
                          color: Color(0xFFF28C0F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 28),

              // 7. ปุ่ม Verify สีส้ม
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
                    // ทำงานเมื่อกดยืนยัน OTP
                  },
                  child: const Text(
                    'Verify',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // ตัวช่วยสร้างกล่องใส่ OTP แต่ละช่อง
  Widget _buildOtpBox({required bool first, required bool last}) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xFFE5E5E5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: TextField(
          autofocus: first,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          onChanged: (value) {
            if (value.isNotEmpty && !last) {
              FocusScope.of(context).nextFocus();
            } else if (value.isEmpty && !first) {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }
}