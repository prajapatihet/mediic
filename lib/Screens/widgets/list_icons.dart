import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ListIcons extends StatelessWidget {
  final String icon;
  final String text;

  const ListIcons({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      color: Color.fromARGB(135, 238, 236, 236),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(icon),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                text,
                style: GoogleFonts.inter(
                  fontSize: 15.sp,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
