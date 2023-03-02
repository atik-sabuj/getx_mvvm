
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  
  final loginVM = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();


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
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginVM.emailController.value,
                    focusNode: loginVM.emailFocusNode.value,
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.snakBar('Email', 'Enter email');
                    }
                    },
                    onFieldSubmitted: (value){
                      Utils.fieldFocusChange(context, loginVM.emailFocusNode.value, loginVM.passwordFocusNode.value);
                    },
                    decoration: InputDecoration(
                      hintText: 'email_hint'.tr,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20,),

                  TextFormField(
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
                  ),

                ],
              ),
            ),

            const SizedBox(height: 40,),
            RoundButton(
              width: 200,
                title: 'login'.tr,
                loading: loginVM.loading.value,
                onPress: (){
                if(_formkey.currentState!.validate()){

                }
            }
            ),

          ],
        ),
      ),
    );
  }
}
