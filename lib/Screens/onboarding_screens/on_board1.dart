import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height, // Ensures it fits within the screen
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Expanded(
              flex: 6, // Distributes available space properly
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage("assets/images/doctor1.png"),
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3, // Ensures the text section takes the remaining space
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: const [
                        Color.fromARGB(255, 247, 247, 247),
                        Color.fromARGB(255, 255, 255, 255),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 25.h),
                    child: Text(
                      "Consult only with a doctor\nyou trust",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 37, 37, 37),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h), // Extra spacing for safety
          ],
        ),
      ),
    );
  }
}
