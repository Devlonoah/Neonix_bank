import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

addVerticalSpace(double height) {
  return SizedBox(height: height.h);
}

addHorizontalSpace(double width) {
  return SizedBox(width: width.w);
}

const COLOR_SUN_AMBER = Color(0xFFe2fe00);

const COLOR_ICON = Colors.black;
const COLOR_DARK_BLUE = Color(0xFF27293e);
const COLOR_WHITE = Colors.white;

final subHeaderTextStyle = TextStyle(
    color: COLOR_DARK_BLUE, fontWeight: FontWeight.w900, fontSize: 13.sp);

final labelTextStyle = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 12.sp, color: COLOR_DARK_BLUE);
