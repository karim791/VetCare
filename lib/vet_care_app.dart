import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/utils/router/app_router.dart';
import 'package:vetcare/core/utils/router/app_routes.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/features/auth/cubit/auth_cubit.dart';

class VetCareApp extends StatelessWidget {
  const VetCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) {
          final authCubit = AuthCubit();
          authCubit.checkAuth();
          return authCubit;
        },
        child: Builder(
          builder: (context) {
            return BlocBuilder<AuthCubit, AuthState>(
              bloc: BlocProvider.of<AuthCubit>(context),
              buildWhen: (previous, current) => current is AuthInitial||current is AuthSuccess,
              builder: (context, state) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primaryColor: AppColors.deepGreen,
                    scaffoldBackgroundColor: AppColors.background,
                  ),
                  title: 'VetCare',
                  initialRoute:state is AuthSuccess? AppRoutes.homePage:AppRoutes.onBoardingPage,
                  onGenerateRoute: AppRouter.onGenerateRoutes,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
