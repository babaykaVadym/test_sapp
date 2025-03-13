import 'package:flutter_app_scarb/core/helper/date_time.dart';
import 'package:flutter_app_scarb/core/helper/system.dart';
import 'package:flutter_app_scarb/features/personal_settings/data/models/personal_settings_model.dart';
import 'package:flutter_app_scarb/features/personal_settings/domain/usecases/get_personal_settings_data_usecase.dart';
import 'package:flutter_app_scarb/features/personal_settings/domain/usecases/update_personal_settings_data_usecase.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/app_exception.dart';
import '../../../../core/error/error_handler_util.dart';

part 'personal_settings_cubit.freezed.dart';
part 'personal_settings_state.dart';

class PersonalSettingsCubit extends Cubit<PersonalSettingsState> {
  PersonalSettingsCubit() : super(const PersonalSettingsState.initial());

  final GetPersonalSettingsDataUsecase _getPersonalSettings =
      sl<GetPersonalSettingsDataUsecase>();
  final UpdatePersonalSettingsDataUsecase _updatePersonalSettings =
      sl<UpdatePersonalSettingsDataUsecase>();

  Future<void> getData() async {
    try {
      emit(state.copyWith(progressOn: true));

      final getSetting = await _getPersonalSettings.getPersonalProfile();

      getSetting.fold(
        (failure) => setError(
          error: failure,
          where: '[PersonalSettingsCubit] resModel',
        ),
        (data) {
          final dateTimeBirth =
              DateTimeUtils.dateStringToDateTime(data.birthDate);
          final dateTimeJoin =
              DateTimeUtils.stringToDateTimeJSNull(data.joinedAt);

          emit(state.copyWith(
            progressOn: false,
            kidsCount: data.kids,
            maritalStatus: data.relationshipStatus,
            userDateBirth: dateTimeBirth,
            userJoinDate: dateTimeJoin,
            techAffinity: data.techAffinity,
            userGender: data.sex,
            userGenderIdentity: data.identifiesAs,
          ));
        },
      );
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[PersonalSettingsCubit] getData');
    }
  }

  Future<bool?> updatePersonalModel() async {
    try {
      emit(state.copyWith(
        progressOn: true,
      ));

      final birthDate = DateTimeUtils.dateTimeToDateString(state.userDateBirth);

      final joinedAt = state.userJoinDate?.toIso8601String();

      PersonalProfileModel profileModel = PersonalProfileModel(
        birthDate: birthDate,
        identifiesAs: state.userGenderIdentity,
        joinedAt: joinedAt,
        kids: state.kidsCount,
        sex: state.userGender,
        relationshipStatus: state.maritalStatus,
        techAffinity: state.techAffinity,
      );

      final result =
          await _updatePersonalSettings.updatePersonalProfile(profileModel);

      bool? res = result.fold(
        (error) {
          setError(
              error: error,
              where:
                  '[PersonalSettingsCubit] updatePersonalModel updatePersonalProfile');

          return null;
        },
        (data) {
          final dateTimeBirth =
              DateTimeUtils.dateStringToDateTime(data.birthDate);
          final dateTimeJoin =
              DateTimeUtils.stringToDateTimeJSNull(data.joinedAt);
          emit(state.copyWith(
            kidsCount: data.kids,
            maritalStatus: data.relationshipStatus,
            userDateBirth: dateTimeBirth,
            userJoinDate: dateTimeJoin,
            update: false,
            techAffinity: data.techAffinity,
            userGender: data.sex,
            userGenderIdentity: data.identifiesAs,
          ));
          SystemHelper.showSuccessfullyToast();
          return true;
        },
      );

      emit(state.copyWith(
        progressOn: false,
      ));
      return res;
    } catch (e, stack) {
      setError(
          error: e,
          stackTrace: stack,
          where: '[PersonalSettingsCubit] updatePersonalModel');
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
      update: true,
    ));
  }

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
              where: where ?? '[PersonalSettingsCubit] '));
    }
    emit(state.copyWith(
      error: error,
      progressOn: false,
    ));
  }
}
