import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';

import '../../../../core/utils/themes/text_styles.dart';

class ClinicsCarousel extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => horizontalSpace(8.w),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            height: 150.h,
            width: 200.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: 'https://www.animalmedicalcenterav.com/uploads/1/3/0/7/130711658/animalmedicalcenteroftheantelopevalley-234121-full-service-vet-blogbanner1_orig.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(4.h),
                    Text(
                      'GreenField Veterinary',
                      style: TextStyles.font14DarkGreenMedium,
                    ),
                    verticalSpace(4.h),
                    Text(
                      'Open until 8:00 PM',
                      style: TextStyles.font12DeepGreenBold,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
