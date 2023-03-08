
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {
  final formKey;
   LoginButtonWidget({Key? key, required this.formKey}) : super(key: key);

  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundButton(
        width: 200,
        title: 'login'.tr,
        loading: loginVM.loading.value,
        onPress: (){
          if(_formkey.currentState!.validate()){

          }
        }
    ),
    );
  }
}