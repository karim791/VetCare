import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/features/onboarding/views/widgets/last_text_and_button.dart';
import 'package:vetcare/features/onboarding/views/widgets/onboarding_image_and_text.dart';
import 'package:vetcare/features/onboarding/views/widgets/vet_logo_and_name.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 10.w),
            child: Column(
              children: [
                const VetLogoAndName(),
                verticalSpace(35.h),
                const OnboardingImageAndText(),
                verticalSpace(35.h),
                const LastTextAndButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
