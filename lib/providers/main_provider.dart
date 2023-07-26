import 'package:flutter/material.dart';


class MainProvider extends ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void login() {
    // Aquí implementa la lógica de inicio de sesión.
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    // Aquí implementa la lógica de cierre de sesión.
    _isAuthenticated = false;
    notifyListeners();
  }


}