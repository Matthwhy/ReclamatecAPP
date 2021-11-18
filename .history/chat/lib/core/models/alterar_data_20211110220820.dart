
enum AlterarMode { Dark, Light }

class AlterarData {
  
  AlterarMode _mode = AlterarMode.Dark;

  bool get isDark {
    return _mode == AlterarMode.Login;
  }

  bool get isSignup {
    return _mode == AlterarMode.Signup;
  }

  void toggleAuthMode() {
    _mode = isLogin ? AlterarMode.Signup : AlterarMode.Login;
  }
}
