import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DateSelect extends StatefulWidget {
  final String title;
  final String date;

  const DateSelect({
    super.key,
    required this.date,
    required this.title,
  });

  @override
  State<DateSelect> createState() => _DateSelectState();
}

class _DateSelectState extends State<DateSelect> {
  bool isSelected = false;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleSelection,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.02,
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: isSelected ? const Color.fromARGB(255, 2, 179, 149) : Colors.white,
            borderRadius: BorderRadius.circular(18.r),
            border: Border.all(color: Colors.black12),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: isSelected ? Colors.white : Colors.black54,
                  ),
                ),
                Text(
                  widget.date,
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    color: isSelected ? Colors.white : const Color.fromARGB(255, 27, 27, 27),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
