import 'package:flutter/cupertino.dart';

class Settingprovider extends ChangeNotifier
{
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  void changevalue1(bool value)
  {
    isSwitched = value;
    notifyListeners();
  }
  void changevalue2(bool value)
  {
    isSwitched1 = value;
    notifyListeners();
  }
  void changevalue3(bool value)
  {
    isSwitched2 = value;
    notifyListeners();
  }

}