import 'dart:async';

import 'package:base_template/data_model/json_model/photo.dart';
import 'package:base_template/data_model/json_model/user.dart';
import 'package:base_template/service/photo_service/photo_service.dart';
import 'package:base_template/service/user_service/user_service.dart';
import 'package:dio/dio.dart';

abstract class Repository {}

abstract class IUserRepository extends Repository {
  Future<(List<User>?, DioException?)> getUserList();
}

class UserRepository extends IUserRepository {
  UserRepository({required this.userService, required this.photoService});

  final UserService userService;
  final PhotoService photoService;

  @override
  Future<(List<User>?, DioException?)> getUserList() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      List<User> data = await userService.getUserList();

      //List<Photo> res = await photoService.getPhotoList();

      return (data, null);
    } catch (e) {
      return (null, (e as DioException));
    }
  }
}
