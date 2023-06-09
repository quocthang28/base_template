import 'package:base_template/global_observable/auth_status.dart';
import 'package:base_template/repository/todo_repository.dart';
import 'package:base_template/repository/user_repository.dart';
import 'package:base_template/network/dio_module.dart';
import 'package:base_template/service/photo_service/photo_service.dart';
import 'package:base_template/service/todo_service/todo_service.dart';
import 'package:base_template/service/user_service/user_service.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  ServiceLocator._();

  static void setupDependencies() {
    GetIt.I.registerSingleton(AppDio());

    GetIt.I.registerLazySingleton<AuthStatus>(() => AuthStatus());

    GetIt.I.registerLazySingleton<TodoService>(() => const TodoService());
    GetIt.I.registerLazySingleton<TodoRepository>(() => TodoRepository());

    GetIt.I.registerLazySingleton<UserService>(() => UserService(GetIt.I<AppDio>().dio));
    GetIt.I.registerLazySingleton<PhotoService>(() => PhotoService(GetIt.I<AppDio>().dio));
    GetIt.I.registerLazySingleton<IUserRepository>(() => UserRepository(userService: GetIt.I<UserService>(), photoService: GetIt.I<PhotoService>()));
  }
}
