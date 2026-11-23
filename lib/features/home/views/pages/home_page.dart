import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/features/home/views/widgets/headline_with_text_button.dart';
import 'package:vetcare/features/home/views/widgets/home_top_bar.dart';
import 'package:vetcare/features/home/views/widgets/pet_container.dart';

import '../widgets/services_grid_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 28.h),
          child: Column(
            children: [
              HomeTopBar(),
              verticalSpace(24.h),
              PetContainer(),
              verticalSpace(24.h),
              HeadlineWithTextButton(headline: 'What do you need?'),
              verticalSpace(8.h),
              ServicesGridItems(),
            ],
          ),
        ),
      ),
    );
  }
}
