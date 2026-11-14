import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vetcare/core/di/dependency_injection.dart';
import 'package:vetcare/core/helpers/app_constant.dart';
import 'package:vetcare/core/utils/router/app_router.dart';
import 'package:vetcare/vet_care_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Supabase.initialize(
    url: AppConstant.supabaseUrl,
    publishableKey: AppConstant.publishableKey,
  );
  final supabaseClient = Supabase.instance.client;
  setupGetIt(supabaseClient);

  runApp(VetCareApp(appRouter: AppRouter()));
}
