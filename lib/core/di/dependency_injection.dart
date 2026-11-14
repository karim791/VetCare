import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vetcare/core/services/supabase_database_services.dart';
import 'package:vetcare/features/auth/cubit/auth_cubit.dart';
import 'package:vetcare/features/auth/services/auth_services.dart';

final getIt = GetIt.instance;

void setupGetIt(SupabaseClient supabaseClient) {
  // Supabase Client
  getIt.registerSingleton<SupabaseClient>(
    supabaseClient,
  );

  // Database Services
  getIt.registerLazySingleton<SupabaseDatabaseServices>(
    () => SupabaseDatabaseServices(
      supabaseClient: getIt<SupabaseClient>(),
    ),
  );

  // Authentication Services
  getIt.registerLazySingleton<AuthServices>(
    () => AuthServicesImpl(
      supabaseClient: getIt<SupabaseClient>(),
      supabaseDatabaseServices:
          getIt<SupabaseDatabaseServices>(),
    ),
  );

  // Authentication Cubit
  getIt.registerFactory<AuthCubit>(
    () => AuthCubit(getIt<AuthServices>()),
  );
}
