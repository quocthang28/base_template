import 'package:base_template/network/interceptor/response_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AppDio {
  AppDio();

  Dio? _dio;

  Dio get dio {
    if (_dio != null) {
      return _dio!;
    }
    BaseOptions options = BaseOptions(
      baseUrl: 'http://10.0.2.2:3939',
      //baseUrl: 'http://192.168.1.101:1337' // local address
      //baseUrl: 'https://testingservices321.azurewebsites.net' //cloud
      //baseUrl: 'https://jsonplaceholder.typicode.com',
      // connectTimeout: Duration(seconds: 50),
      // receiveTimeout: 10,
    );
    _dio = Dio(options);

    _dio!.interceptors.add(PrettyDioLogger(request: true, requestBody: false, responseBody: false, requestHeader: false));
    _dio!.interceptors.add(ResponseInterceptor());
    _dio!.interceptors.add(RetryInterceptor(
      dio: dio,
      logPrint: print, // specify log function (optional)
      retries: 5, // retry count (optional)
      retryDelays: const [
        Duration(seconds: 5),
        Duration(seconds: 10),
        Duration(seconds: 15),
        Duration(seconds: 20),
        Duration(seconds: 25),
      ],
      //retryableExtraStatuses: {status401Unauthorized},
    ));

    return _dio!;
  }
}
