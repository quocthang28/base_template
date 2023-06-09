import 'package:base_template/constant/api_endpoint.dart';
import 'package:base_template/data_model/json_model/photo.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'photo_service.g.dart';

@RestApi()
abstract class PhotoService {
  factory PhotoService(Dio dio) = _PhotoService;

  @GET(ApiEndpoint.getPhotoList)
  Future<List<Photo>> getPhotoList();
}
