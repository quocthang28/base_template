import 'package:base_template/data_model/json_model/user.dart';
import 'package:base_template/service/user_service/user_service.dart';

class UserRepository {
  UserRepository({required this.userService});

  final UserService userService;

  Future<List<User>> getUserList() {
    return userService.getUserList();
  }
}
