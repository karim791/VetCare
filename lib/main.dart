import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vetcare/core/helpers/app_constant.dart';
import 'package:vetcare/vet_care_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: AppConstant.supabaseUrl,
    publishableKey: AppConstant.publishableKey,
  );
  runApp(const VetCareApp());
}

