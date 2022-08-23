import 'package:base_template/repository/todo_repository.dart';
import 'package:base_template/repository/user_repository.dart';
import 'package:base_template/service/dio_module.dart';
import 'package:base_template/service/todo_service/todo_service.dart';
import 'package:base_template/service/user_service/user_service.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  ServiceLocator._();

  static void setupDependencies() {
    GetIt.I.registerSingleton(DioModule());

    GetIt.I.registerLazySingleton<TodoService>(() => const TodoService());
    GetIt.I.registerLazySingleton<TodoRepository>(() => TodoRepository());

    GetIt.I.registerLazySingleton<UserService>(() => UserService(GetIt.I<DioModule>().dio));
    GetIt.I.registerLazySingleton<UserRepository>(() => UserRepository());
  }
}
