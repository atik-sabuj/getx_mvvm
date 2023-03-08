

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
  InputPasswordWidget({Key? key}) : super(key: key);

  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.passwordController.value,
      focusNode: loginVM.passwordFocusNode.value,
      obscureText: true,
      obscuringCharacter: '*',
      validator: (value){
        if(value!.isEmpty){
          Utils.snakBar('Password', 'Enter password');
        }
      },
      onFieldSubmitted: (value){

      },
      decoration: InputDecoration(
        hintText: 'password_hint'.tr,
        border: OutlineInputBorder(),
      ),
    );
  }
}
