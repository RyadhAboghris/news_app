

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio dio;

// خود الرابط من الماب
  static String url = '';

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: url,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    @required String url,
    @required Map<String, dynamic> query,
  }) async {
    // ضع الرابط
    return await dio.get(url, queryParameters: query);
  }
}
