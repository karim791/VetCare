import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

class VetLogoAndName extends StatelessWidget {
  const VetLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/vetcare_logo.svg'),
        horizontalSpace(10.w),
        Text('VetCare', style: TextStyles.font34BlackBold),
      ],
    );
  }
}
