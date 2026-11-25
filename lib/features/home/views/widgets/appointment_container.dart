import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

import '../../../../core/helpers/spacing.dart';

class AppointmentContainer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(16.r)),
            child: Container(
              width: 70.w,
              decoration: BoxDecoration(color: AppColors.lightGreen),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('24', style: TextStyles.font22DeepGreenBold),
                  Text('OCT', style: TextStyles.font18DarkGreenSemiBold),
                ],
              ),
            ),
          ),
          horizontalSpace(16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.lightGreen,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    '● Confirmed',
                    style: TextStyles.font12GreenRegular,
                  ),
                ),
              ),
              verticalSpace(6.h),
              Text(
                'Annual wellness check',
                style: TextStyles.font16BlackMedium,
              ),
              verticalSpace(6.h),
              Text('Green Paws Clinic', style: TextStyles.font14BlackMedium),
            ],
          ),
        ],
      ),
    );
  }
}
