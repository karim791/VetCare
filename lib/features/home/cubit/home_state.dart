import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vetcare/core/services/supabase_error_handler/supabase_error_handler.dart';

import '../../../core/models/clinic_model.dart';
import '../../../core/models/pet_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = HomeLoading;

  //Pets states
  const factory HomeState.petLoaded(List<PetModel>? petList) = PetLoaded;
  const factory HomeState.petLoadedFailure(SupabaseErrorHandler error) = PetLoadedFailure;

  //clinics states
  const factory HomeState.clinicsLoaded(List<ClinicModel>? clinicsList) = ClinicsLoaded;
  const factory HomeState.clinicsLoadedFailure(SupabaseErrorHandler error) = ClinicsLoadedFailure;
}
