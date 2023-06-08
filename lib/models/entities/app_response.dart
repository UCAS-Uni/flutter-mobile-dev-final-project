import 'package:logger/logger.dart';

class AppResponse {
  Status? code;

  dynamic data;
  AppResponse({this.code, this.data});

  factory AppResponse.fromJson(var map) {
    try {
      if (map["data"] == null) {
        return AppResponse(
          code: Status.fromJson(map),
        );
      } else {
        return AppResponse(
          code: Status.fromJson(map),
          data: map["data"],
        );
      }
    } catch (e) {
      return AppResponse(
          code: Status(
        message: "$e",
        code: 403,
        success: false,
      ));
    }
  }

  Map<String, dynamic> toJson() {
    try {
      return {
        "status": code?.toJson(),
        "data": data,
      };
    } catch (e) {
      Logger().e(e);
      return {"": ""};
    }
  }
}

class Status {
  Status({
    this.message,
    this.code,
    this.success,
  });

  String? message;
  int? code;
  bool? success;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        message: json["message"] ?? "",
        code: json["code"] ?? "",
        success: json["success"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "message": message ?? "",
        "code": code ?? "",
        "success": success ?? "",
      };
}
