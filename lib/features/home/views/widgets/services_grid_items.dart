import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';

import 'package:vetcare/core/utils/themes/text_styles.dart';

class ServicesGridItems extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Book a visit',
      'Find a clinic',
      'Chat with vet',
      'Pet Shop',
    ];
    List<IconData> iconData = [
      Icons.calendar_today_outlined,
      Icons.home_repair_service_outlined,
      Icons.messenger_outline_outlined,
      Icons.shopping_bag_outlined,
    ];
    List<Color> colors = [
      const Color.fromARGB(255, 152, 247, 242),
      const Color.fromARGB(255, 254, 211, 155),
      const Color.fromARGB(255, 149, 214, 245),
      const Color.fromARGB(255, 244, 145, 178),
    ];
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 90.h,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(2.h),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.all(Radius.circular(16.r)),
            ),
            child: gridItem(iconData[index], items[index], colors[index]),
          ),
        );
      },
    );
  }

  Widget gridItem(IconData icon, String text, Color color) {
    return Expanded(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, color: AppColors.deepGreen),
          ),
          horizontalSpace(3.w),
          Text(text, style: TextStyles.font14LightGrayRegular),
          const Spacer(),
          CircleAvatar(
            radius: 15.r,
            backgroundColor: Colors.grey.shade100,
            child: Icon(Icons.arrow_forward_rounded, size: 14.sp),
          ),
        ],
      ),
    );
  }
}
