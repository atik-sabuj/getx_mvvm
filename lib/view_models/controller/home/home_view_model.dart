
import 'package:get/get.dart';
import 'package:getx_mvvm/repository/home_repository/home_repository.dart';

class HomeController extends GetxController {

  final _api = HomeRepository();



  void userListApi(){

    _api.userListApi().then((value){

    }).onError((error, stackTrace){

    });
  }
}