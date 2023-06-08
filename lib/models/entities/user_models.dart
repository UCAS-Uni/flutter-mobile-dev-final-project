class UserModel {
  UserModel({
    this.name,
    this.email,
    this.typeUser,
    this.token,
    this.phone,
    this.active,
    this.password,
    this.id,
  });
  int? id;
  String? name;
  String? email;
  String? phone;
  String? active;
  String? typeUser;
  String? token;
  String? password;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        active: json["active"],
        typeUser: json["type_user"],
        token: json["token"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "active": active,
        "type_user": typeUser,
        "token": token,
        "password": password,
      };
}
