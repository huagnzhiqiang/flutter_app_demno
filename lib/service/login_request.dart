import 'package:flutter_app_demno/service/http_request.dart';
import 'package:flutter_app_demno/entity/login_entity.dart';
class LoginRequest {
  //登錄
  static Future login(Map<String, dynamic> params) async {

    return await HttpRequest.request("/api/user/login", method: "post", params: params).then((value){

      var loginEntity = LoginEntity.fromJson(value);

      print("hah -->"+loginEntity.data.username);

    });

  }
}
