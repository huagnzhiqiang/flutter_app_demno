import 'package:dio/dio.dart';
import 'package:flutter_app_demno/service/http_request.dart';

class LoginRequest {
  //登錄
  static Future login(Map<String, dynamic> params) async {
    return await HttpRequest.request("/api/user/login", method: "post", params: params);
  }

}
