import 'package:base_template/data_model/json_model/user.dart';
import 'package:base_template/service/user_service/user_service.dart';
import 'package:get_it/get_it.dart';

class UserRepository {
  final UserService _userService = GetIt.I<UserService>();

  Future<List<User>> getUserList() {
    return _userService.getUserList();
  }
}
