import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/authentication/forgot_pass.dart';
import 'package:page_transition/page_transition.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: IconButton(
          icon: SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.08,
            child: SvgPicture.asset(
              "assets/svgIcons/back_arrow_icon.svg",
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              PageTransition(
                type: PageTransitionType.leftToRight,
                child: ForgotPasswordScreen(),
              ),
            );
          },
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Forgot your password?",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Enter verification code we have sent to your\nnumber",
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(241, 245, 245, 245),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        counterText: '',
                        contentPadding: EdgeInsets.zero,
                      ),
                      maxLength: 1,
                      style: TextStyle(fontSize: 20.sp),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(241, 245, 245, 245),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        counterText: '',
                        contentPadding: EdgeInsets.zero,
                      ),
                      maxLength: 1,
                      style: TextStyle(fontSize: 20.sp),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(241, 245, 245, 245),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        counterText: '',
                        contentPadding: EdgeInsets.zero,
                      ),
                      maxLength: 1,
                      style: TextStyle(fontSize: 20.sp),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(241, 245, 245, 245),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        counterText: '',
                        contentPadding: EdgeInsets.zero,
                      ),
                      maxLength: 1,
                      style: TextStyle(fontSize: 20.sp),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 3, 190, 150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                child: Text(
                  "Verify",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't receive code yet? ",
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Resend",
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: const Color.fromARGB(255, 3, 190, 150),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
