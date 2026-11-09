import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/features/auth/views/widgets/sign_up_widgets/sign_up_bottom_section.dart';
import 'package:vetcare/features/auth/views/widgets/sign_up_widgets/sign_up_text_fields_with_button.dart';
import 'package:vetcare/features/auth/views/widgets/sign_up_widgets/sign_up_upper_text_section.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                SignUpUpperTextSection(),
                verticalSpace(30.h),
                SignUpTextFieldsWithButton(),
                verticalSpace(24.h),
                SignUpBottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
