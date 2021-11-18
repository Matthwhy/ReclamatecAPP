
enum AlterarMode { Dark, Light }

class AlterarData {
  
  AlterarMode _mode = AlterarMode.Dark;

  bool get isDark {
    return _mode == AlterarMode.Dark;
  }

  bool get isSignup {
    return _mode == AlterarMode.Light;
  }

  void toggleAuthMode() {
    _mode = isDark ? AlterarMode.Light : AlterarMode.Login;
  }
}
