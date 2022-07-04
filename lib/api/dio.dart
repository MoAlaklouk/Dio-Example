import 'package:dio/dio.dart';
import 'package:dio_example/model/TNews.dart';

Dio DioHelper() {
  Dio dio = Dio();
  dio.options.headers = {'': ''};
  return dio;
}
