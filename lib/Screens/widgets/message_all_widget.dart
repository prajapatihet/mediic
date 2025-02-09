import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageAllWidget extends StatelessWidget {
  final String title;
  final String subtext;
  final String image;
  final String time;
  final String messageCount;

  const MessageAllWidget({
    super.key,
    required this.title,
    required this.subtext,
    required this.image,
    required this.messageCount,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.9,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.1500,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.6,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        subtext,
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.1200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //Time of chat text here e.g 10:24
                      Text(
                        time,
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        height: 18.h,
                        width: 18.w,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 2, 134, 117),
                          shape: BoxShape.circle,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Message Count Here
                            Text(
                              messageCount,
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
