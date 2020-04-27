// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromMap(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toMap());

class UserData {
  final String firstName;
  final String lastName;
  final int phoneNumber;
  final int cartAmount;
  final int storeCredits;
  final int walletBalance;
  final List<Address> address;

  UserData({
    @required this.firstName,
    @required this.lastName,
    @required this.phoneNumber,
    @required this.cartAmount,
    @required this.storeCredits,
    @required this.walletBalance,
    @required this.address,
  });

  factory UserData.fromMap(Map<String, dynamic> json) => UserData(
    firstName: json["firstName"],
    lastName: json["lastName"],
    phoneNumber: json["phoneNumber"],
    cartAmount: json["cartAmount"],
    storeCredits: json["storeCredits"],
    walletBalance: json["walletBalance"],
    address: List<Address>.from(json["address"].map((x) => Address.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "firstName": firstName,
    "lastName": lastName,
    "phoneNumber": phoneNumber,
    "cartAmount": cartAmount,
    "storeCredits": storeCredits,
    "walletBalance": walletBalance,
    "address": List<dynamic>.from(address.map((x) => x.toMap())),
  };
}

class Address {
  final String houseNumber;
  final String locality;
  final String city;
  final String state;

  Address({
    @required this.houseNumber,
    @required this.locality,
    @required this.city,
    @required this.state,
  });

  factory Address.fromMap(Map<String, dynamic> json) => Address(
    houseNumber: json["houseNumber"],
    locality: json["locality"],
    city: json["city"],
    state: json["state"],
  );

  Map<String, dynamic> toMap() => {
    "houseNumber": houseNumber,
    "locality": locality,
    "city": city,
    "state": state,
  };
}
