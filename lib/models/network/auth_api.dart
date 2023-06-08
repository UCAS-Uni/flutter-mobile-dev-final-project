import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../entities/app_response.dart';
import 'dio_manager.dart';

class AuthApi {
  AuthApi._();
  static final AuthApi getInstance = AuthApi._();

  Future<AppResponse> loginRequest({var url, var header, var body}) async {
    try {
      var response = await DioManagerClass.getInstance
          .dioPostFormMethod(url: url, body: body, header: header);
      return AppResponse.fromJson(json.decode(response.toString()));
    } on DioException catch (ex) {
      var message = json.decode(ex.response.toString());
      Logger().e(message);

      return AppResponse.fromJson(message);
    }
  }

  Future<AppResponse> registerRequest({var url, var header, var body}) async {
    try {
      var response = await DioManagerClass.getInstance
          .dioPostFormMethod(url: url, body: body, header: header);
      return AppResponse.fromJson(json.decode(response.toString()));
    } on DioException catch (ex) {
      var message = json.decode(ex.response.toString());
      Logger().e(message);

      return AppResponse.fromJson(message);
    }
  }
}
