import 'dart:async';

import 'package:base_template/data_model/json_model/user.dart';
import 'package:base_template/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.userRepository}) : super(const UserState(status: UserStatus.initial)) {
    on<GetUserList>((event, emit) async {
      emit(state.copyWith(status: UserStatus.loading));
      var (data, error) = await userRepository.getUserList();
      if (error != null) {
        emit(state.copyWith(status: UserStatus.error));
      } else {
        emit(state.copyWith(status: UserStatus.loaded, userList: data));
      }
    });
  }

  final IUserRepository userRepository;
}
