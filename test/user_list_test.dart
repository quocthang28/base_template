import 'package:base_template/bloc/user_bloc/user_bloc.dart';
import 'package:base_template/repository/user_repository.dart';
import 'package:base_template/service_locator.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  setUp(() {
    ServiceLocator.setupDependencies();
  });

  group('User Bloc', () {
    blocTest(
      'fetch user list from server when adding GetUserList event',
      build: () => UserBloc(userRepository: GetIt.I<IUserRepository>()),
      act: (UserBloc bloc) => bloc.add(GetUserList()),
      wait: const Duration(seconds: 5),
      skip: 1,
      expect: () => [
        //isA<UserState>().having((p0) => p0.status, 'fetching data', UserStatus.loading),
        isA<UserState>().having((p0) => p0.status, 'data fetched', UserStatus.loaded)
      ],
    );
  });
}
