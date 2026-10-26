import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/utils/router/app_router.dart';
import 'package:vetcare/core/utils/router/app_routes.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';

class VetCareApp extends StatelessWidget {
  const VetCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.deepGreen,
          scaffoldBackgroundColor: AppColors.offWhite,
        ),
        title: 'VetCare',
        initialRoute: AppRoutes.onBoardingPage,
        onGenerateRoute: AppRouter.onGenerateRoutes,
      ),
    );
  }
}
