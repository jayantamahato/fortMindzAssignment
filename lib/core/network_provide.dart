import 'package:dio/dio.dart';
import 'package:fml/config/config.dart';

class API {
  final Dio _dio = Dio();
  API() {
    _dio.options.baseUrl = Config().baseUrl();
  }

  Dio get makeRequest => _dio;
}
