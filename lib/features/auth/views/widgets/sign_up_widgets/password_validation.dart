import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;

  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialChar,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2.h),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2.h),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(2.h),
        buildValidationRow('At least 1 special character', hasSpecialChar),
        verticalSpace(2.h),
        buildValidationRow('At least 8 characters long', hasMinLength),
        
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(children: [
      CircleAvatar(
        radius: 2.5,
        backgroundColor: AppColors.lightGrey,
      ),
      horizontalSpace(6.w),
      Text(text,style: TextStyles.font14DarkGreenMedium.copyWith(
        decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.blueGrey,
            decorationThickness: 2,
            color: hasValidated ? AppColors.lightGrey : AppColors.darkGreen,
      ),)
  ],);
  }
}
