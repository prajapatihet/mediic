import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthSocialLogin extends StatelessWidget {
  final String text;
  final String logo;

  const AuthSocialLogin({
    super.key,
    required this.logo,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 02,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.w),
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.07,
              child: SvgPicture.asset(
                logo,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  color: Color.fromARGB(255, 44, 44, 44),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            height: 10.h,
            width: 10.w,
            color: Color.fromARGB(255, 255, 255, 255),
          )
        ],
      ),
    );
  }
}
