import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconWidget extends StatelessWidget {
  final String icon;
  const SvgIconWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon);
  }
}
