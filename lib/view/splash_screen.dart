import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/components/general_exceptions_widget.dart';
import 'package:getx_mvvm/res/components/internet_exceptions_widget.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashScreen = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Splash Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('welcome_back'.tr, textAlign: TextAlign.center,),
      ),
    );
  }
}
