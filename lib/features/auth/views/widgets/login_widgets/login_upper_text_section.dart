import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class UpperTextSection extends StatelessWidget {
  const UpperTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome Back!', style: TextStyles.font28DarkGreenBold),
          verticalSpace(8.h),
          Text(
            'Sign in to keep your pet\'s care close.',
            style: TextStyles.font14LightGrayRegular,
          ),
        ],
      ),
    );
  }
}
