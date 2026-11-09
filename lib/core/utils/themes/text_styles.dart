import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/core/utils/themes/font_weight_helper.dart';

class TextStyles {
  static TextStyle font34BlackBold = TextStyle(
    fontSize: 34.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font30DeepGreenBold = TextStyle(
    fontSize: 30.sp,
    color: AppColors.deepGreen,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font28DarkGreenBold = TextStyle(
    fontSize: 28.sp,
    color: AppColors.darkGreen,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font22DarkGreenBold = TextStyle(
    fontSize: 22.sp,
    color: AppColors.darkGreen,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font20WhiteSemiBold = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.lightGrey,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14DarkGreenMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkGreen,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font16WhiteRegular = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
  );
}
