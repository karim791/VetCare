import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/app_regex.dart';
import 'package:vetcare/core/helpers/extension.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/core/utils/router/app_routes.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';
import 'package:vetcare/core/views/widgets/general_text_field.dart';
import 'package:vetcare/core/views/widgets/main_button.dart';
import 'package:vetcare/features/auth/cubit/auth_cubit.dart';
import 'package:vetcare/features/auth/cubit/auth_state.dart';
import 'package:vetcare/features/auth/views/widgets/sign_up_widgets/password_validation.dart';

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
  bool isObscureText = true;
  bool isObscureText2 = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController.addListener(() {
      final password = passwordController.text;
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(password);
        hasUpperCase = AppRegex.hasUpperCase(password);
        hasNumber = AppRegex.hasNumber(password);
        hasSpecialChar = AppRegex.hasSpecialCharacter(password);
        hasMinLength = AppRegex.hasMinLength(password);
      });
    });
  }

  @override
  void dispose() {
    passwordController.removeListener(() {});
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

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
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text('Phone', style: TextStyles.font14DarkGreenMedium),
          ),
          GeneralTextField(
            hintText: '(01) 000-0000',
            controller: phoneController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
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
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            controller: passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
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
            isObscureText: isObscureText2,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText2 = !isObscureText2;
                });
              },
              child: Icon(
                isObscureText2 ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            controller: confirmPasswordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password don\'t match';
              }
            },
          ),
          verticalSpace(20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text(
              'PassWord Validation',
              style: TextStyles.font14DarkGreenMedium,
            ),
          ),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialChar: hasSpecialChar,
            hasMinLength: hasMinLength,
          ),

          verticalSpace(20.h),
          BlocListener<AuthCubit, AuthState>(
            bloc: authCubit,
            listenWhen: (previous, current) =>
                current is SignUpFailure ||
                current is SignUpSuccess ||
                current is SignUpLoading,
            listener: (context, state) {
              state.whenOrNull(
                signUpLoading: () {
                  showDialog(
                    context: context,
                    builder: (context) => const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.deepGreen,
                      ),
                    ),
                  );
                },
                signUpSuccess: () {
                  context.pop();
                  context.pushAndRemoveUntil(AppRoutes.homePage);
                },
                signUpFailure: (message) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.error, color: Colors.red, size: 32.h),
                      content: Text(
                        message,
                        style: TextStyles.font14DarkGreenMedium,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => context.pop(),
                          child: Text(
                            'Got It',
                            style: TextStyles.font14LightGrayRegular,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );

              // if (state is AuthLoading) {
              //   showDialog(
              //     context: context,
              //     builder: (context) => const Center(
              //       child: CircularProgressIndicator(
              //         color: AppColors.deepGreen,
              //       ),
              //     ),
              //   );
              // } else if (state is AuthSuccess) {
              //   context.pop();
              //   context.pushReplacementNamed(AppRoutes.homePage);
              // } else if (state is AuthFailure) {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     SnackBar(
              //       content: Text(state.message),
              //       backgroundColor: Colors.red,
              //     ),
              //   );
              // }
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
