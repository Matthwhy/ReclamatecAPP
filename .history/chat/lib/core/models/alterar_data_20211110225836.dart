
enum AlterarMode { Dark, Light }

class AlterarData {
  
  AlterarMode _mode = AlterarMode.Dark;

  bool get isDark {
    return _mode == AlterarMode.Dark;
  }

  bool get isLight {
    return _mode == AlterarMode.Light;
  }

  void alterStyle() {
    _mode = isDark ? AlterarMode.Light : AlterarMode.Dark;
  }
}
