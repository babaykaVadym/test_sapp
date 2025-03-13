import 'package:flutter_app_scarb/core/error/app_exception.dart';
import 'package:flutter_app_scarb/core/error/error_handler_util.dart';
import 'package:flutter_app_scarb/core/helper/date_time.dart';
import 'package:flutter_app_scarb/features/onboarding/data/model/onbording_models.dart';
import 'package:flutter_app_scarb/features/onboarding/domain/usecases/update_onboarding_data_usecase.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState.initial());

  UpdateOnboardingDataUseCase saveOnboardingDataUseCase =
      sl<UpdateOnboardingDataUseCase>();

  setError({
    Object? error,
    StackTrace? stackTrace,
    String? where,
  }) {
    if (error != null) {
      ErrorHandler.catchError(error, stackTrace,
          appException: AppException(
              error: error,
              stackTrace: stackTrace,
              where: where ?? '[SettingsCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }

  jumpToPageOnboarding({int? page}) {
    emit(state.copyWith(
      jumpToPage: page,
      pageIdnex: page ?? state.pageIdnex,
    ));
  }

  Future<ProfileModel?> updateOnboardModel() async {
    try {
      emit(state.copyWith(
        progressOn: true,
      ));

      final birthDate =
          DateTimeUtils.dateTimeToDateString(state.userDateBirth!);
      final joinedAt = state.userJoinDate!.toIso8601String();

      ProfileModel profileModel = ProfileModel(
        birthDate: birthDate,
        fullName: state.userName,
        identifiesAs: state.userGenderIdentity,
        joinedAt: joinedAt,
        kids: state.kidsCount,
        sex: state.userGender,
        relationshipStatus: state.maritalStatus,
        techAffinity: state.techAffinity,
      );

      final result =
          await saveOnboardingDataUseCase.updateOnbordingProfile(profileModel);
      ProfileModel? resModel = result.fold(
        (error) {
          setError(
              error: error,
              where:
                  '[OnboardingCubit] updateOnboardModel updateOnbordingProfile');

          return null;
        },
        (data) {
          return data;
        },
      );

      emit(state.copyWith(
        progressOn: false,
      ));

      return resModel;
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[OnboardingCubit] updateOnboardModel');
    }
    return null;
  }

  updateState({
    DateTime? userJoinDate,
    DateTime? userDateBirth,
    bool? userJoinDateError,
    bool? userDateBirthError,
    String? maritalStatus,
    String? userGender,
    String? userGenderIdentity,
    int? techAffinity,
    int? kidsCount,
  }) {
    emit(state.copyWith(
      userJoinDate: userJoinDate ?? state.userJoinDate,
      maritalStatus: maritalStatus ?? state.maritalStatus,
      userGender: userGender ?? state.userGender,
      userGenderIdentity: userGenderIdentity ?? state.userGenderIdentity,
      techAffinity: techAffinity ?? state.techAffinity,
      kidsCount: kidsCount ?? state.kidsCount,
      userDateBirth: userDateBirth ?? state.userDateBirth,
      userDateBirthError: userDateBirthError ?? state.userDateBirthError,
      userJoinDateError: userJoinDateError ?? state.userJoinDateError,
    ));
  }

  validateJoinDate() {
    if (state.userJoinDate == null) {
      updateState(userJoinDateError: true);
    } else {
      jumpToPageOnboarding(page: state.pageIdnex + 1);
    }
  }

  validateBirthDate() {
    if (state.userDateBirth == null) {
      updateState(userDateBirthError: true);
    } else {
      jumpToPageOnboarding(page: state.pageIdnex + 1);
    }
  }

  upadeUserName(String name) {
    try {
      emit(state.copyWith(
        userName: name,
        pageIdnex: 1,
        jumpToPage: 1,
      ));
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[OnboardingCubit] upadeUserName');
    }
  }
}
