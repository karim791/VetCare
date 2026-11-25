import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

import '../../../../core/helpers/spacing.dart';

class PetContainer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 130.h,
        width: double.infinity,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.darkGreen, AppColors.deepGreen],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(16.r)),
              child: CachedNetworkImage(
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST9UjitrpsLDBn81E7T6MBLb9JSMOr5lFtBKtU6dScSA&s=10',
              ),
            ),
            horizontalSpace(8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('MY PET', style: TextStyles.font14WhiteLight),
                verticalSpace(8.h),
                Text('Milo', style: TextStyles.font16WhiteMedium),
                Text(
                  'Type of pet . 3 yrs',
                  style: TextStyles.font14WhiteMedium,
                ),
                verticalSpace(8.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '●  ',
                        style: TextStyle(color: Colors.green, fontSize: 15.sp),
                      ),
                      TextSpan(
                        text: 'Care up to date',
                        style: TextStyles.font14WhiteLight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            CircleAvatar(
              radius: 15.r,
              backgroundColor: Colors.white10,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
