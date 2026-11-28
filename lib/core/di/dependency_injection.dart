import 'package:get_it/get_it.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vetcare/core/services/supabase_database_services.dart';
import 'package:vetcare/features/auth/cubit/auth_cubit.dart';
import 'package:vetcare/features/auth/services/auth_services.dart';
import 'package:vetcare/features/home/cubit/home_cubit.dart';
import 'package:vetcare/features/home/services/home_services.dart';

final getIt = GetIt.instance;

void setupGetIt(SupabaseClient supabaseClient) {
  // PersistentTapController
  getIt.registerLazySingleton<PersistentTabController>(
  () => PersistentTabController(initialIndex: 0),
);
  // Supabase Client
  getIt.registerSingleton<SupabaseClient>(supabaseClient);

  // Database Services
  getIt.registerLazySingleton<SupabaseDatabaseServices>(
    () => SupabaseDatabaseServices(supabaseClient: getIt<SupabaseClient>()),
  );

  // Authentication Services
  getIt.registerLazySingleton<AuthServices>(
    () => AuthServicesImpl(
      supabaseClient: getIt<SupabaseClient>(),
      supabaseDatabaseServices: getIt<SupabaseDatabaseServices>(),
    ),
  );

  // Authentication Cubit
  getIt.registerFactory<AuthCubit>(() => AuthCubit(getIt<AuthServices>()));

  // Home Services
  getIt.registerLazySingleton<HomeServices>(
    () => HomeServicesImpl(
        supabaseClient: getIt<SupabaseClient>(),
      supabaseDatabaseServices: getIt<SupabaseDatabaseServices>(),
    ),
  );

  // Home Cubit
  getIt.registerFactory<HomeCubit>(
    ()=>HomeCubit(getIt<HomeServices>() )
  );
}
