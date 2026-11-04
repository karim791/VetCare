import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/features/auth/views/widgets/bottom_section.dart';
import 'package:vetcare/features/auth/views/widgets/text_fields_with_button.dart';
import 'package:vetcare/features/auth/views/widgets/upper_text_section.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UpperTextSection(),
                verticalSpace(70.h),
                TextFieldsWithButton(),
                verticalSpace(24.h),
                BottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
