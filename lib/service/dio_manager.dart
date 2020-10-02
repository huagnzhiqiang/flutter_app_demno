// import 'dart:convert';
//
// import 'package:dio/dio.dart';
//
// /// Description：网络请求工具类
// /// Created on 2020/9/1
// /// Author : 郭
//
// class DioManager {
//   //写一个单例
//   //在 Dart 里，带下划线开头的变量是私有变量
//   static DioManager _instance;
//
//   static const String _POST = "post";
//   static const String _GET = "get";
//
//   static DioManager getInstance() {
//     if (_instance == null) {
//       _instance = DioManager();
//     }
//     return _instance;
//   }
//
//   Dio dio = new Dio();
//
//   ///默认配置
//   DioManager() {
//     // Set default configs
//     dio.options.headers = {
//       "version": '3.7.1',
// //      "Authorization": '_token',
//     };
//     dio.options.baseUrl = Apis.BASE_URL_TEST;
//     dio.options.connectTimeout = 5000;
//     dio.options.receiveTimeout = 3000;
//     dio.interceptors.add(LogInterceptor(responseBody: GlobalConfig.isDebug)); //是否开启请求日志
// //    dio.interceptors.add(CookieManager(CookieJar()));//缓存相关类，具体设置见https://github.com/flutterchina/cookie_jar
//   }
//
//   /// 必传参数
//   Map<String, dynamic> getBaseParams() {
//     return Map.from({'uid': 173, "channelNumber": 1, "userAccessToken": "1"});
//   }
//
//   //get请求
//   get(String url, Map<String, dynamic> params, Function successCallBack, [Function errorCallBack]) async {
//     params = params ?? Map();
//     params.addAll(getBaseParams());
//     _requstHttp(url, successCallBack, _GET, params, errorCallBack);
//   }
//
//   //post请求
//   post(String url, Map<String, dynamic> params, Function successCallBack, [Function errorCallBack]) async {
//     params = params ?? Map();
//     params.addAll(getBaseParams());
//     _requstHttp(url, successCallBack, _POST, params, errorCallBack);
//   }
//
//   /// 发起请求
//   _requstHttp(String url, Function successCallBack,
//       [String method, Map<String, dynamic> params, Function errorCallBack]) async {
//     var connectivityResult = await (new Connectivity().checkConnectivity());
//     if (connectivityResult == ConnectivityResult.none) {
//       _error(errorCallBack, ExceptionHandle.net_error, '网络异常，请检查你的网络！');
//       return;
//     }
//     Response response;
//     try {
//       if (method == _GET) {
//         //get请求
//         if (params != null && params.isNotEmpty) {
//           response = await dio.get(url, queryParameters: params);
//         } else {
//           response = await dio.get(url);
//         }
//       } else if (method == _POST) {
//         //post请求
//         if (params != null && params.isNotEmpty) {
//           response = await dio.post(url, data: params);
//         } else {
//           response = await dio.post(url);
//         }
//       }
//     } on DioError catch (error) {
//       final NetError netError = ExceptionHandle.handleException(error);
//       // debug模式才打印
//       if (GlobalConfig.isDebug) {
//         print('请求异常: ' + error.toString());
//         print('请求异常url: ' + url);
//         print('请求头: ' + dio.options.headers.toString());
//       }
//       _error(errorCallBack, netError.code, netError.msg);
//       return '';
//     }
//     // debug模式打印相关数据
//     if (GlobalConfig.isDebug) {
//       print('请求url: ' + url);
//       print('请求头: ' + dio.options.headers.toString());
//       if (params != null) {
//         print('请求参数: ' + params.toString());
//       }
//       if (response != null) {
//         print('返回参数: ' + response.toString());
//       }
//     }
//     //json解析
//     String dataStr = json.encode(response.data);
//     Map<String, dynamic> dataMap = json.decode(dataStr);
//     if (dataMap == null || dataMap['state'] == 0) {
//       _error(errorCallBack, dataMap['code'].toString() as int, dataMap['message'].toString());
//     } else if (successCallBack != null) {
//       successCallBack(dataMap["result"]);
//     }
//   }
//
//   /// 回调错误信息
//   _error(Function errorCallBack, int code, String error) {
//     if (errorCallBack != null) {
//       errorCallBack(code, error);
//     }
//   }
// }
