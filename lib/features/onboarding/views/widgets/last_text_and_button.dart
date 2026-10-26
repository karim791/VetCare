import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/extension.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/router/app_routes.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';
import 'package:vetcare/core/views/widgets/main_button.dart';

class LastTextAndButton extends StatelessWidget {
  const LastTextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Discover trusted veterinary clinics and connect with the right care team for your best friend.',
          style: TextStyles.font14LigtGrayRegular,
        ),
        verticalSpace(50.h),
        MainButton(
          buttonText: 'Get Started',
          textStyle: TextStyles.font20WhiteSemiBold,
          onPressed: () => context.pushReplacementNamed(AppRoutes.homePage),
        ),
      ],
    );
  }
}
