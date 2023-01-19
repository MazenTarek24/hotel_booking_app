class LoginModel {
  final bool status;
  final String message;
  final UserData data;

  LoginModel({
    required this.status,
    required this.message,
    required this.data});

  factory LoginModel.fromJson(jsonData)
  {
    return LoginModel(
      status: jsonData['status'],
      message: jsonData['message'],
      data: jsonData['data'],
    );
  }
}


class UserData{
 final String token;

 UserData({
   required this.token
});
 factory UserData.fromJson( jsonData)
  {
    return UserData(token: jsonData['access_token']);
    //token = jsonData['access_token'];
  }
}