

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm/utils/utils.dart';

class LoginViewModel extends GetxController{

  final _api = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;



  void loginApi(){
    Map data = {
      'email' : emailController.value.text,
      'password' : passwordController.value.text,
    };

    _api.loginApi(data).then((value){
      Utils.snakBar('Log In', 'Login Successfully');
    }).onError((error, stackTrace){
      Utils.snakBar('Error', error.toString());
    });
  }
}