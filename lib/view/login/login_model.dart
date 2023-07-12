import 'dart:convert';


Login? photosFromMap(String str) => Login.fromMap(json.decode(str));

String photosToMap(Login? data) => json.encode(data!.toMap());

class Login{
  Login({
    this.emailAddress,
    this.message,
    this.accessToken,
    this.tokenType,
    this.expiresIn,
  });

  String? emailAddress;
  String? message;
  String? accessToken;
  String? tokenType;
  int? expiresIn;

  factory Login.fromMap(Map<String, dynamic> json) => Login(
    emailAddress: json["email_address"],
    message: json["message"],
    accessToken: json["access_token"],
    tokenType: json["token_type"],
    expiresIn: json["expires_in"],
  );

  Map<String, dynamic> toMap() => {
    "email_address": emailAddress,
    "message": message,
    "access_token": accessToken,
    "token_type": tokenType,
    "expires_in": expiresIn,
  };
}