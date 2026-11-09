import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vetcare/core/helpers/extension.dart';
import 'package:vetcare/core/utils/router/app_routes.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class SignUpBottomSection extends StatelessWidget {
  const SignUpBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account?',
              style: TextStyles.font14LightGrayRegular,
            ),
            TextSpan(
              text: ' Sign In',
              style: TextStyles.font14DarkGreenMedium.copyWith(
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushAndRemoveUntil (AppRoutes.loginPage);
                },
            ),
          ],
        ),
      ),
    );
  }
}
