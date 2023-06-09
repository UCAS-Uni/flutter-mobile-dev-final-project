import 'dart:convert';

import 'package:logger/logger.dart';

import '../../core/constants/app_constants.dart';
import '../entities/app_response.dart';
import '../local/shared_pref_manager.dart';
import 'auth_api.dart';

class AuthHelper {
  AuthHelper._();
  static final AuthHelper getInstance = AuthHelper._();
  Logger log = Logger();

  Future<AppResponse> loginUser(var body) async {
    var appResponse = await AuthApi.getInstance
        .loginRequest(body: body, url: singinEndpoint, header: {
      'Accept': '*/*',
      'Content-Type':
          'multipart/form-data; boundary=<calculated when request is sent>',
    });

    if (appResponse.code?.success == true) {
      print("Debug 1");
      SharedPref.instance
          .setCurrentUserData(user: jsonEncode(appResponse.data));
      SharedPref.instance.setUserToken(token: appResponse.data["token"]);
      Logger().d("if ${appResponse.toJson()}");
      return appResponse;
    } else {
      Logger().d("else ${appResponse.toJson()}"); // Here is the error
      return appResponse;
    }
  }

  Future<AppResponse> registerUser(Map<String, dynamic> body) async {
    var appResponse = await AuthApi.getInstance
        .registerRequest(body: body, url: signupEndpoint, header: {
      'Accept': '*/*',
      'Content-Type': 'multipart/form-data',
      'Accept-Language': 'gzip, deflate, br',
    });
    if (appResponse.code?.success == true) {
      SharedPref.instance
          .setCurrentUserData(user: jsonEncode(appResponse.data));
      SharedPref.instance.setUserToken(token: appResponse.data["token"]);
      Logger().d("if ${appResponse.toJson()}");
      return appResponse;
    } else {
      Logger().d("else ${appResponse.toJson()}");
      return appResponse;
    }
  }

  Future<AppResponse> getAllWorks() async {
    var appResponse = await AuthApi.getInstance
        .getAllWorksRequest(url: allWorkEndpoint, header: {
      'Accept': 'application/json',
      // 'Content-Type': 'multipart/form-data',
    });
    if (appResponse.code?.success == true) {
      // SharedPref.instance
      //     .setCurrentUserData(user: jsonEncode(appResponse.data));
      // SharedPref.instance.setUserToken(token: appResponse.data["token"]);
      Logger().d("if ${appResponse.toJson()}");
      return appResponse;
    } else {
      Logger().d("else ${appResponse.toJson()}");
      return appResponse;
    }
  }
}
