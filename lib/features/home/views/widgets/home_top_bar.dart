import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class HomeTopBar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('GOOD MORNING', style: TextStyles.font16DeepGreenBold),
            Text('Hi, Kareem', style: TextStyles.font26BlackSemiBold),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.r,
          backgroundColor: AppColors.lighterGrey,
          child: SvgPicture.asset('assets/svgs/notifications.svg'),
        ),
      ],
    );
  }
}
