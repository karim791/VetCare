import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/extension.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/router/app_routes.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';
import 'package:vetcare/core/views/widgets/general_text_field.dart';
import 'package:vetcare/core/views/widgets/main_button.dart';
import 'package:vetcare/features/auth/cubit/auth_cubit.dart';

class SignUpTextFieldsWithButton extends StatefulWidget {
  const SignUpTextFieldsWithButton({super.key});

  @override
  State<SignUpTextFieldsWithButton> createState() =>
      _SignUpTextFieldsWithButtonState();
}

class _SignUpTextFieldsWithButtonState
    extends State<SignUpTextFieldsWithButton> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final authCubit = BlocProvider.of<AuthCubit>(context);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text('Full name', style: TextStyles.font14DarkGreenMedium),
          ),
          GeneralTextField(
            hintText: 'Full name',
            controller: fullNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your full name';
              }
            },
          ),
          verticalSpace(15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text(
              'Email Address',
              style: TextStyles.font14DarkGreenMedium,
            ),
          ),
          GeneralTextField(
            hintText: 'Email',
            controller: emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
            },
          ),
          verticalSpace(15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text('Phone', style: TextStyles.font14DarkGreenMedium),
          ),
          GeneralTextField(
            hintText: '(555) 000-0000',
            controller: phoneController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
            },
          ),
          verticalSpace(15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text('Password', style: TextStyles.font14DarkGreenMedium),
          ),
          GeneralTextField(
            hintText: 'Password',
            isObscureText: true,
            controller: passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
            },
          ),
          verticalSpace(15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text(
              'Confirm Password',
              style: TextStyles.font14DarkGreenMedium,
            ),
          ),
          GeneralTextField(
            hintText: 'Confirm Password',
            controller: confirmPasswordController,
            isObscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              } else if (value != passwordController.text) {
                return 'Password does not match';
              }
            },
          ),

          verticalSpace(20.h),
          BlocListener<AuthCubit, AuthState>(
            bloc: authCubit,
            listenWhen: (previous, current) =>
                current is AuthFailure ||
                current is AuthSuccess ||
                current is AuthLoading,
            listener: (context, state) {
              if (state is AuthLoading) {
                showDialog(
                  context: context,
                  builder: (context) => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.deepGreen,
                    ),
                  ),
                );
              } else if (state is AuthSuccess) {
                context.pop();
                context.pushReplacementNamed(AppRoutes.homePage);
              } else if (state is AuthFailure) {
                context.pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            child: MainButton(
              buttonText: 'Sign Up',
              textStyle: TextStyles.font16WhiteRegular,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final fullName = fullNameController.text.trim();
                  final email = emailController.text.trim();
                  final phone = phoneController.text.trim();
                  final password = passwordController.text.trim();
                  authCubit.signUpWithEmailAndPassword(
                    email: email,
                    fullName: fullName,
                    password: password,
                    phoneNumber: phone,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
