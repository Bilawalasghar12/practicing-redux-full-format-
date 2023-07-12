import '../view/Login/login_model.dart';
import '../view/get/get_model.dart';

class AppState {
  List<Login>? Logininfo;
   Getmodel? getinfo;

  AppState({
    this.Logininfo,
    this.getinfo,

  });

  AppState.fromState(AppState anotherState) {
    Logininfo = anotherState.Logininfo;
    getinfo= anotherState.getinfo;


  }
}
