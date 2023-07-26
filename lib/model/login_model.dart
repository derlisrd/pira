class LoginModel{
  String? jwt;
  bool isLogin;
  String? errorMessage;
  LoginModel({ this.isLogin = false, this.errorMessage, this.jwt});
}