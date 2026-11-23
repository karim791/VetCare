import 'package:flutter/material.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class HeadlineWithTextButton extends StatelessWidget {
  final String headline;
  final String? buttonText;
  final VoidCallback? onTap;
  const HeadlineWithTextButton({
    super.key,
    required this.headline,
    this.buttonText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(headline, style: TextStyles.font20DarkGreenSemiBold),
        const Spacer(),
        if (buttonText != null) ...[
          TextButton(
            onPressed: onTap,
            child: Text(buttonText!, style: TextStyles.font14GreenBold),
          ),
        ],
      ],
    );
  }
}
