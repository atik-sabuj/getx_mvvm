

import 'dart:ui';

import 'package:getx_mvvm/data/network/network_api_services.dart';

class LoginRepository {

  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async{
    dynamic response = _apiService.postApi(data, url);
    return response;
  }
}