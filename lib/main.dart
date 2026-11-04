import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vetcare/vet_care_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://nmtzzywmuhlskjfuykme.supabase.co/',
    publishableKey: 'sb_publishable_P8bQb1lWi-vKV8vbQH2PrQ_rmhJLav4',
  );
  runApp(const VetCareApp());
}

