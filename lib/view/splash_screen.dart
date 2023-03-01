import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/components/internet_exceptions_widget.dart';
import 'package:getx_mvvm/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return InternetExceptionWidget();

/*    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
        centerTitle: true,
      ),
      body: Image(
        image: AssetImage(ImageAssets.splashScreen),
      ),
    );*/
  }
}
