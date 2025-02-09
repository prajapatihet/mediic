import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileList extends StatelessWidget {
  final String title;
  final String image;
  final Color color;

  const ProfileList({
    super.key,
    required this.image,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.055,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.1500,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 247, 250, 247),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(image),
                ),
                SizedBox(
                  width: 5.h,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.5800,
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                      child: Text(
                        title,
                        style: GoogleFonts.inter(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          color: color,
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.1100,
                  decoration: const BoxDecoration(),
                  child: Image.asset("assets/icons/forward.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
