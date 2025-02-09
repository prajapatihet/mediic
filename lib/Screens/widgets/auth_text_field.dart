import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextField extends StatelessWidget {
  final String text;
  final String icon;

  const AuthTextField({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.none,
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            focusColor: Colors.black26,
            fillColor: Color.fromARGB(255, 247, 247, 247),
            filled: true,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
              child: SvgPicture.asset(icon),
            ),
            prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
            label: Text(text),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30.r),
            ),
          ),
        ),
      ),
    );
  }
}
