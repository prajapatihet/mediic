import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ListDoctor1 extends StatelessWidget {
  final String image;
  final String title;
  final String subtext;
  final String numRating;
  final String distance;

  const ListDoctor1({
    super.key,
    required this.distance,
    required this.image,
    required this.title,
    required this.numRating,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: Color.fromARGB(134, 228, 227, 227),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 7.h,
            ),
            Center(
              child: Container(
                alignment: Alignment.topCenter,
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtext,
                    style: GoogleFonts.poppins(
                      fontSize: 11.sp,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    spacing: 5.w,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02200,
                        width: MediaQuery.of(context).size.width * 0.09,
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.020,
                              width: MediaQuery.of(context).size.width * 0.035,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/star.png"),
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Text(
                              numRating,
                              style: GoogleFonts.poppins(
                                fontSize: 11.sp,
                                color: Color.fromARGB(255, 4, 179, 120),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.01500,
                            width: MediaQuery.of(context).size.width * 0.027,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/icons/Location.png",
                                ),
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            distance,
                            style: GoogleFonts.poppins(
                              fontSize: 11.sp,
                              color: Color.fromARGB(255, 133, 133, 133),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
