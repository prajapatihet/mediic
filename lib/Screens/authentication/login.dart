import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/authentication/forgot_pass.dart';
import 'package:medical/screens/authentication/login_signup.dart';
import 'package:medical/screens/authentication/register.dart';
import 'package:page_transition/page_transition.dart';

import '../views/homepage.dart';
import '../widgets/auth_social_login.dart';
import '../widgets/auth_text_field.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.08,
            child: SvgPicture.asset(
              "assets/svgIcons/back_arrow_icon.svg",
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRight,
                child: SelectAuth(),
              ),
            );
          },
        ),
        centerTitle: true,
        title: Text(
          "Login",
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
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            children: [
              SizedBox(
                height: 4.h,
              ),
              //Text field Login import from Auth_text_field widget
              AuthTextField(
                text: "Enter you email",
                icon: "assets/svgIcons/email_icon.svg",
              ),
              //Text field Password
              AuthTextField(
                text: "Enter your password",
                icon: "assets/svgIcons/pass_icon.svg",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child: ForgotPasswordScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Forgot your password?",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: const Color.fromARGB(255, 3, 190, 150),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 3, 190, 150),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.black87,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        color: const Color.fromARGB(255, 3, 190, 150),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      "or",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 26.h,
              ),
              AuthSocialLogin(
                logo: "assets/svgIcons/google_icon.svg",
                text: "Sign in with Google",
              ),
              SizedBox(
                height: 20.h,
              ),
              AuthSocialLogin(
                logo: "assets/svgIcons/apple_icon.svg",
                text: "Sign in Apple",
              ),
              SizedBox(
                height: 20.h,
              ),
              AuthSocialLogin(
                logo: "assets/svgIcons/facebook_icon.svg",
                text: "Sign in facebook",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
