import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';
import 'package:vetcare/core/views/widgets/general_text_field.dart';
import 'package:vetcare/core/views/widgets/main_button.dart';

class TextFieldsWithButton extends StatefulWidget {
  const TextFieldsWithButton({super.key});

  @override
  State<TextFieldsWithButton> createState() => _TextFieldsWithButtonState();
}

class _TextFieldsWithButtonState extends State<TextFieldsWithButton> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text('Email Address', style: TextStyles.font14DarkGreenMedium),
          ),
          GeneralTextField(
            hintText: 'Email',
            controller: emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          verticalSpace(20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text('Password', style: TextStyles.font14DarkGreenMedium),
          ),
          GeneralTextField(
            hintText: 'Password',
            controller: passwordController,
            isObscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: TextButton(
              onPressed: () {
                // Handle forgot password logic here
              },
              child: Text(
                'Forgot Password?',
                style: TextStyles.font14DarkGreenMedium.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          verticalSpace(20.h),
          MainButton(
            buttonText: 'Sign In',
            textStyle: TextStyles.font16WhiteRegular,
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  }
}
