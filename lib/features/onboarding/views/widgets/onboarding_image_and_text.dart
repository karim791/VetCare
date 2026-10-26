import 'package:flutter/material.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class OnboardingImageAndText extends StatelessWidget {
  const OnboardingImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/onboarding_background.png'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.12, 0.25],
            ),
          ),
          child: Image.asset('assets/images/onboarding_vet.png'),
        ),

        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          child: Text(
            'Care For Every Paw',
            style: TextStyles.font30DeepGreenBold,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
