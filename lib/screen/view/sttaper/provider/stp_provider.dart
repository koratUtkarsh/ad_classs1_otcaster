import 'package:flutter/cupertino.dart';

class home_provider extends ChangeNotifier {
  int i = 0;

  void continu_step() {
    i++;
    notifyListeners();
  }

  void back_step() {
    i--;
    notifyListeners();
  }

}