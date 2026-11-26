import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetcare/features/home/cubit/home_state.dart';

import '../../../core/services/api_result.dart';
import '../services/home_services.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeServices _homeServices;

  HomeCubit(this._homeServices) : super(HomeState.initial());

  Future<void> fetchPets() async {
    emit(const HomeState.loading());
    final userResult = await _homeServices.fetchCurrentUserData();
    await userResult.when(
      success: (user) async {
        final response = await _homeServices.fetchPetList();

        response.when(
          success: (pets) {
            emit(HomeState.petLoaded(pets));
          },
          failure: (error) {
            emit(HomeState.petLoadedFailure(error));
          },
        );
      },
      failure: (error) async {
        emit(HomeState.petLoadedFailure(error));
      },
    );
  }

  Future<void> fetchClinics() async {
    final clinicsList = await _homeServices.fetchClinicsList();
    clinicsList.when(
      success: (clinicsList) => emit(HomeState.clinicsLoaded(clinicsList)),
      failure: (error) => emit(HomeState.clinicsLoadedFailure(error)),
    );
  }
}
