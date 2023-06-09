import 'package:base_template/constant/api_endpoint.dart';
import 'package:base_template/data_model/json_model/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';

part 'user_service.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class UserService {
  factory UserService(Dio dio) = _UserService;

  @GET(ApiEndpoint.getUserList)
  Future<List<User>> getUserList();
}
