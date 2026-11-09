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

class TextFieldsWithButton extends StatefulWidget {
  const TextFieldsWithButton({super.key});

  @override
  State<TextFieldsWithButton> createState() => _TextFieldsWithButtonState();
}

class _TextFieldsWithButtonState extends State<TextFieldsWithButton> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isObscureText = true;

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
          verticalSpace(20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Text('Password', style: TextStyles.font14DarkGreenMedium),
          ),
          GeneralTextField(
            hintText: 'Password',
            controller: passwordController,
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
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
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            child: MainButton(
              buttonText: 'Sign In',
              textStyle: TextStyles.font16WhiteRegular,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final email = emailController.text.trim();
                  final password = passwordController.text.trim();
                  authCubit.signInWithEmailAndPassword(email, password);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
