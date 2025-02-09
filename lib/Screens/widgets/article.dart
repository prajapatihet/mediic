import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Article extends StatelessWidget {
  final String title;
  final String dateText;
  final String duration;
  final String image;

  const Article({
    super.key,
    required this.title,
    required this.dateText,
    required this.duration,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: const Color.fromARGB(255, 231, 231, 231)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 5.w,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.1200,
              child: Image.asset(image),
            ),
            SizedBox(
              width: 8.w,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    softWrap: true,
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          dateText,
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          duration,
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 0, 136, 102),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.09,
              child: Image.asset(
                "assets/icons/bookmark.png",
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
