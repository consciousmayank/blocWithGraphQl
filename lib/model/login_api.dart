// To parse this JSON data, do
//
//     final loginApi = loginApiFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoginApi loginApiFromJson(String str) => LoginApi.fromMap(json.decode(str));

String loginApiToJson(LoginApi data) => json.encode(data.toMap());

class LoginApi {
  final String userName;
  final String password;
  final int id;

  LoginApi({
    @required this.userName,
    @required this.password,
    @required this.id,
  });

  factory LoginApi.fromMap(Map<String, dynamic> json) => LoginApi(
    userName: json["userName"],
    password: json["password"],
    id: json["id"],
  );

  Map<String, dynamic> toMap() => {
    "userName": userName,
    "password": password,
    "id": id,
  };
}
