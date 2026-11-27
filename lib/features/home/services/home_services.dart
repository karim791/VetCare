import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vetcare/core/models/appointment_model.dart';
import 'package:vetcare/core/models/clinic_model.dart';
import 'package:vetcare/core/models/pet_model.dart';
import 'package:vetcare/core/services/api_result.dart';

import '../../../core/services/supabase_database_services.dart';
import '../../../core/services/supabase_error_handler/supabase_error_handler.dart';
import '../../auth/models/user_data.dart';

abstract class HomeServices {
  Future<ApiResult<List<ClinicModel>>> fetchClinicsList();
  Future<ApiResult<List<AppointmentModel>>> fetchAppointments();
  Future<ApiResult<List<PetModel>>> fetchPetList();
  Future<ApiResult<UserData?>> fetchCurrentUserData();
}

class HomeServicesImpl implements HomeServices {
  final SupabaseClient _supabase;
  final SupabaseDatabaseServices supabaseDatabaseServices;

  HomeServicesImpl({
    required SupabaseClient supabaseClient,
    required this.supabaseDatabaseServices,
  }) : _supabase = supabaseClient;

  @override
  Future<ApiResult<List<AppointmentModel>>> fetchAppointments() async {
    try {
      final reponse = await supabaseDatabaseServices.fetchRows(
        table: 'appointments',
        builder: (Map<String, dynamic> data, String id) =>
            AppointmentModel.fromJson(data),
      );
      return ApiResult.success(reponse);
    } catch (error, stackTrace) {
      return ApiResult.failure(SupabaseErrorHandler.handle(error, stackTrace));
    }
  }

  @override
  Future<ApiResult<List<ClinicModel>>> fetchClinicsList() async {
    try {
      final reponse = await supabaseDatabaseServices.fetchRows(
        table: 'clinics',
        builder: (Map<String, dynamic> data, String id) =>
            ClinicModel.fromJson(data),
      );
      return ApiResult.success(reponse);
    } catch (error, stackTrace) {
      return ApiResult.failure(SupabaseErrorHandler.handle(error, stackTrace));
    }
  }

  @override
  Future<ApiResult<List<PetModel>>> fetchPetList() async {
    try {
      final reponse = await supabaseDatabaseServices.fetchRows(
        table: 'pets',
        builder: (Map<String, dynamic> data, String id) =>
            PetModel.fromJson(data),
      );
      return ApiResult.success(reponse);
    } catch (error, stackTrace) {
      return ApiResult.failure(SupabaseErrorHandler.handle(error, stackTrace));
    }
  }

  @override
  Future<ApiResult<UserData?>> fetchCurrentUserData() async {
    try {
      final user = _supabase.auth.currentUser;
      if (user == null) {
        throw StateError('No authenticated user');
      }

      final currentUser = await supabaseDatabaseServices.fetchRow(
        table: 'users',
        primaryKey: 'id',
        id: user.id,
        builder: (Map<String, dynamic> data, String id) {
          return UserData.fromMap(data);
        },
      );
      return ApiResult.success(currentUser);
    } catch (error, stackTrace) {
      return ApiResult.failure(SupabaseErrorHandler.handle(error, stackTrace));
    }
  }
}
