import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';

///Typography og the project
abstract class AppTypography {
  ///body fontfamily
  static const _fontFamilyBody = 'Roboto';

  ///headers fontfamily
  static const _fontFamilyHeader = 'Ubuntu';

  static TextStyle header1 = TextStyle(
    fontFamily: _fontFamilyHeader,
    fontWeight: FontWeight.w500,
    fontSize: 28.sp,
    color: AppColors.black,
  );
  static TextStyle header2 = TextStyle(
    fontFamily: _fontFamilyHeader,
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    color: AppColors.black,
  );
  static TextStyle body1 = TextStyle(
    fontFamily: _fontFamilyBody,
    fontWeight: FontWeight.w400,
    fontSize: 17.sp,
    color: AppColors.black,
  );
  static TextStyle body2 = TextStyle(
    fontFamily: _fontFamilyBody,
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
    color: AppColors.black,
  );
  static TextStyle body3 = TextStyle(
    fontFamily: _fontFamilyBody,
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: AppColors.black,
  );
  static TextStyle body1med = TextStyle(
    fontFamily: _fontFamilyBody,
    fontWeight: FontWeight.w500,
    fontSize: 17.sp,
    color: AppColors.black,
  );
  static TextStyle body2med = TextStyle(
    fontFamily: _fontFamilyBody,
    fontWeight: FontWeight.w500,
    fontSize: 15.sp,
    color: AppColors.black,
  );
  static TextStyle body3med = TextStyle(
    fontFamily: _fontFamilyBody,
    fontWeight: FontWeight.w500,
    fontSize: 13.sp,
    color: AppColors.black,
  );
}
