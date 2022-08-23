part of 'user_bloc.dart';

enum UserStatus { initial, loading, loaded, error, emptyResponse }

class UserState extends Equatable {
  const UserState({required this.status, this.userList});

  final UserStatus status;
  final List<User>? userList;

  UserState copyWith({
    UserStatus? status,
    List<User>? userList,
  }) =>
      UserState(
        status: status ?? this.status,
        userList: userList ?? this.userList,
      );

  @override
  List<Object?> get props => [status, userList];
}
