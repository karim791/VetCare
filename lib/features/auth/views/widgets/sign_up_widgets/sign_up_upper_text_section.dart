import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class SignUpUpperTextSection extends StatelessWidget {
  const SignUpUpperTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text('Create account', style: TextStyles.font22DarkGreenBold),
          verticalSpace(8.h),
          Text(
            'Start your pet\'s care journey with VetCare.',
            style: TextStyles.font14LightGrayRegular,
          ),
      ],
    );
  }
}