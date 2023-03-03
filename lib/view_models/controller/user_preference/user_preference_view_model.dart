
import 'package:get/get.dart';
import 'package:getx_mvvm/models/login/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class UserPreference extends GetxController {

  Future<bool> saveUser(UserModel responseModel)async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', responseModel.token.toString());
    return true;
  }


  Future<UserModel> getUser()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString('token');
    return UserModel(
      token: token
    );
  }
}