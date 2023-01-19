
import '../../../model/login_model.dart';

abstract class LoginState{}

class InitialLoginState extends LoginState{}

 class LoadingLoginState extends LoginState{}

 class SuccessLoginState extends LoginState{
 LoginModel loginModel;
 SuccessLoginState(this.loginModel);
 }

 class ErrorLoginState extends LoginState{
  final String error;

  ErrorLoginState(this.error);

 }

