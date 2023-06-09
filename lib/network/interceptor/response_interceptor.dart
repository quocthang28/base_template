import 'package:base_template/global_observable/auth_status.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class ResponseInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('onRequest');
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('onError');
    if (err.response?.statusCode == 401) {
      print('401 unauthorized');
      GetIt.I<AuthStatus>().changeAuthenticationStatus(isAuthenticated: false);
    }

    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('onResponse');
    super.onResponse(response, handler);
  }
}
