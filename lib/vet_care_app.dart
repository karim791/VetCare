import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/utils/router/app_router.dart';
import 'package:vetcare/core/utils/router/app_routes.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';


class VetCareApp extends StatelessWidget {
   final AppRouter appRouter;
  const VetCareApp({super.key,required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: AppColors.deepGreen,
              scaffoldBackgroundColor: AppColors.background,
            ),
            title: 'VetCare',
            initialRoute: AppRoutes.onBoardingPage,
            onGenerateRoute: appRouter.onGenerateRoutes,
          );
        },
      ),
    );
  }
}
