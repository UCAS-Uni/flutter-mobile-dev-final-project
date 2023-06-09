import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../entities/user_model.dart';

class SharedPref {
  static SharedPref instance = SharedPref._();
  SharedPref._();

  var log = Logger();

  static late SharedPreferences? _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  final String loginStateKey = "LoginKey";
  final String userTypeKey = "userTypeKey";
  final String userTokenKey = "tokenKey";
  final String userDataKey = "userDataKey";

  void setUserLoginState({required String value}) {
    _prefs?.setString(loginStateKey, value);
  }

  String getUserLoginState() {
    try {
      return _prefs?.getString(loginStateKey) ?? "";
    } catch (e) {
      return "";
    }
  }

  void setUserType({required String userType}) {
    _prefs?.setString(userTypeKey, userType);
  }

  void setUserToken({required String token}) {
    _prefs?.setString(userTokenKey, token);
  }

  String getUserToken() {
    try {
      return _prefs?.getString(userTokenKey) ?? "";
    } catch (e) {
      return "";
    }
  }

  void setCurrentUserData({required String user}) {
    _prefs?.setString(userDataKey, user);
  }

  UserModel? getCurrentUserData() {
    try {
      String userString = _prefs?.getString(userDataKey) ?? "";
      return UserModel.fromJson(json.decode(userString));
    } catch (e) {
      return null;
    }
  }
}
