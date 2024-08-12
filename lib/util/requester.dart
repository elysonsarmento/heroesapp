import 'package:dio/dio.dart';

class Requester {
  final Dio _dio;

  Requester({required Dio dio}) : _dio = dio;

  Future<Response> getWithHttp(String url) async {
    return await _dio.get(url);
  }
}
