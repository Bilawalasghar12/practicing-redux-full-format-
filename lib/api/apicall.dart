import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  apiLogin(BuildContext context, {
    String? url,
    Map<String, dynamic>? bodyParms,
    required void Function(Map<String, dynamic>?) sucessResponse,
    required void Function(Map<String, dynamic>?) errorResponse,
  }) async {
    print(bodyParms);
    var header = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    final response = await http.post(
      Uri.parse(url!),
      body: json.encode(bodyParms),
      headers: header,
    );

    debugPrint("333333333333 ./././././ ${response.body}");

    if (response.statusCode == 200) {
      final Map<String, dynamic>? parsed = json.decode(response.body);
      return sucessResponse(parsed);
    } else {
      final Map<String, dynamic>? parsed = json.decode(response.body);
      return errorResponse(parsed!);

    }
  }

  getApi(
      BuildContext context, {
        String? url,
        required void Function(Map<String, dynamic>?) sucessResponse,
        required void Function(Map<String, dynamic>?) errorResponse,
      }) async {
    var header = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    final response = await http.get(
      Uri.parse(url!),
      headers: header,
    );

    debugPrint("999 ./././././ ${response.body}");


    if (response.statusCode == 200) {
      final Map<String, dynamic>? parsed = json.decode(response.body);
      return sucessResponse(parsed);
    } else {
      final Map<String, dynamic>? parsed = json.decode(response.body);
      return errorResponse(parsed!);

    }
  }




}