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
  static TextStyle font14LigtGrayRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.ligntGray,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font20WhiteSemiBold = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
}
