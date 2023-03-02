
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/view_models/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  
  final loginVM = Get.put(LoginViewModel());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'.tr),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginVM.emailController.value,
              focusNode: loginVM.emailFocusNode.value,
              decoration: InputDecoration(
                hintText: 'email_hint'.tr,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40,),
            RoundButton(
              width: 200,
                title: 'login'.tr, onPress: (){})

          ],
        ),
      ),
    );
  }
}
