import 'package:flutter/material.dart';

class LogoProvider with ChangeNotifier {
  bool _isVisible = true;

  void isVisibleFalse() {
    _isVisible = false;
    notifyListeners();
  }

  void isVisibleTrue() {
    _isVisible = true;
    notifyListeners();
  }

  get isVisible => _isVisible;
}
