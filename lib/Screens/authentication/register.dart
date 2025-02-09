import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/authentication/login.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/auth_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.06,
            child: SvgPicture.asset(
              "assets/svgIcons/back_arrow_icon.svg",
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRight,
                child: LogInScreen(),
              ),
            );
          },
        ),
        title: Text(
          "Sign up",
          style: GoogleFonts.inter(
            color: Colors.black87,
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2,
          ),
        ),
        toolbarHeight: 110,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              AuthTextField(
                text: "Enter your name",
                icon: "assets/svgIcons/person_icon.svg",
              ),
              SizedBox(
                height: 5.h,
              ),
              AuthTextField(
                text: "Enter your email",
                icon: "assets/svgIcons/email_icon.svg",
              ),
              SizedBox(
                height: 5.h,
              ),
              AuthTextField(
                text: "Enter your password",
                icon: "assets/svgIcons/pass_icon.svg",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                  Text(
                    "I agree to the terms and conditions",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
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
                    "Create account",
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
                    "Already have an account? ",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.black87,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child: LogInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: const Color.fromARGB(255, 3, 190, 150),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
