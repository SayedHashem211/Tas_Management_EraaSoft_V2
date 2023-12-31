import 'package:dio/dio.dart';

import '../../constants.dart';
import '../local/flutter_secure_storage.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
        BaseOptions(
          baseUrl: 'https://tasksapp.integration25.com/api/',
          headers: {
            'Content-Type': 'application/json',
          },
        ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? lang = 'en',
    String? Token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
    'Authorization': 'Bearer $token',
      //"Token": Token,
    };
    Options(
      validateStatus: (_) => true,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    );
    return await dio!.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    String? lang = 'en',
    String? Token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
    'Authorization': 'Bearer ${read()}',
      'lang': lang,
    };
    Options(
      validateStatus: (_) => true,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    );
    return dio!.post(url, data: data);
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    String? lang = 'en',
    String? Token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Token': Token,
    };
    Options(
      validateStatus: (_) => true,
    );
    return dio!.put(url, data: data);
  }

  static Future<Response> deleteData({
    required String url,
    required Map<String, dynamic> data,
    String? lang = 'en',
    String? Token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Token': Token,
    };
    Options(
      validateStatus: (_) => true,
    );
    return dio!.delete(url, data: data);
  }
}
