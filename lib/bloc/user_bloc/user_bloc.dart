import 'dart:async';

import 'package:base_template/data_model/json_model/user.dart';
import 'package:base_template/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState(status: UserStatus.initial)) {
    on<GetUserList>((event, emit) async {
      emit(state.copyWith(status: UserStatus.loading));
      await _userRepository
          .getUserList()
          .then((value) => emit(value.isEmpty
              ? state.copyWith(status: UserStatus.emptyResponse)
              : state.copyWith(status: UserStatus.loaded, userList: value)))
          .onError((error, stackTrace) {
        emit(state.copyWith(status: UserStatus.error));
      });
    });
  }

  final UserRepository _userRepository = GetIt.I<UserRepository>();
}
