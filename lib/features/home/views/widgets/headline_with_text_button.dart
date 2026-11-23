import 'package:flutter/material.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class HeadlineWithTextButton extends StatelessWidget {
  final String headline;
  final String? buttonText;
  const HeadlineWithTextButton({
    super.key,
    required this.headline,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(headline, style: TextStyles.font20DarkGreenSemiBold),
        const Spacer(),
        if(buttonText!=null)...[TextButton(onPressed: (){}, child: Text(buttonText!,style: TextStyles.font14LightGrayRegular,))]
      ],
    );
  }
}
