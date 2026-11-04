import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/extension.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/router/app_routes.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: Colors.grey, thickness: 1.0)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'or continue with',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Expanded(child: Divider(color: Colors.grey, thickness: 1.0)),
          ],
        ),
        verticalSpace(8.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'By logging, you agree to our',
                style: TextStyles.font14LightGrayRegular,
              ),
              TextSpan(
                text: ' Terms & Conditions',
                style: TextStyles.font14DarkGreenMedium,
              ),
              TextSpan(
                text: ' and',
                style: TextStyles.font14LightGrayRegular.copyWith(height: 1.5),
              ),
              TextSpan(
                text: ' Privacy Policy',
                style: TextStyles.font14DarkGreenMedium,
              ),
            ],
          ),
        ),
        verticalSpace(24.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an account?',
                style: TextStyles.font14LightGrayRegular,
              ),
              TextSpan(
                text: ' Sign Up',
                style: TextStyles.font14DarkGreenMedium.copyWith(
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.pushNamed(AppRoutes.signUpPage);
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
