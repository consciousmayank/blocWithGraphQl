// To parse this JSON data, do
//
//     final homePage = homePageFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

HomePage homePageFromJson(String str) => HomePage.fromMap(json.decode(str));

String homePageToJson(HomePage data) => json.encode(data.toMap());

class HomePage {
  final List<Error> error;
  final bool success;
  final List<Datum> data;

  HomePage({
    @required this.error,
    @required this.success,
    @required this.data,
  });

  factory HomePage.fromMap(Map<String, dynamic> json) => HomePage(
    error: List<Error>.from(json["error"].map((x) => Error.fromMap(x))),
    success: json["success"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "error": List<dynamic>.from(error.map((x) => x.toMap())),
    "success": success,
    "data": List<dynamic>.from(data.map((x) => x.toMap())),
  };
}

class Datum {
  final List<DealList> dealList;

  Datum({
    @required this.dealList,
  });

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
    dealList: List<DealList>.from(json["deal_list"].map((x) => DealList.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "deal_list": List<dynamic>.from(dealList.map((x) => x.toMap())),
  };
}

class DealList {
  final int id;
  final String name;
  final String description;
  final int mrpPrice;
  final String actualPrice;

  DealList({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.mrpPrice,
    @required this.actualPrice,
  });

  factory DealList.fromMap(Map<String, dynamic> json) => DealList(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    mrpPrice: json["mrp_price"],
    actualPrice: json["actual_price"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "description": description,
    "mrp_price": mrpPrice,
    "actual_price": actualPrice,
  };
}

class Error {
  final int errorCode;
  final String message;

  Error({
    @required this.errorCode,
    @required this.message,
  });

  factory Error.fromMap(Map<String, dynamic> json) => Error(
    errorCode: json["error_code"],
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "error_code": errorCode,
    "message": message,
  };
}
