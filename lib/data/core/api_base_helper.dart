import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/data/core/api_constants.dart';
import 'package:pokemon/data/core/api_exceptions.dart';

@lazySingleton
class ApiBaseHelper {
  final Client _client;
  ApiBaseHelper(this._client);
  
  Future<dynamic> get(String url) async {
    Map<String,dynamic> responseJson;
    try {
      final response = await _client.get(Uri.parse(ApiConstants.BASE_URL+url));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    
    return responseJson;
  }


  dynamic _returnResponse(Response response) {
  switch (response.statusCode) {
    case 200:
      final responseJson = json.decode(response.body.toString());
      print(responseJson);
      return responseJson;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:
    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
  }
  }
}