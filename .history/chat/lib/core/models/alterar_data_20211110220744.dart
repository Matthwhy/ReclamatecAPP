
enum AlterarMode { Dark, Light }

class AlterarData {
  
  AlterarMode _mode = AlterarMode.Login;

  bool get isLogin {
    return _mode == AlterarMode.Login;
  }

  bool get isSignup {
    return _mode == AlterarMode.Signup;
  }

  void toggleAuthMode() {
    _mode = isLogin ? AuthMode.Signup : AuthMode.Login;
  }
}
