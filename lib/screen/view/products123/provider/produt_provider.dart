import 'package:ad_classs1_otcaster/screen/view/products123/view/prouct_screen.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider extends ChangeNotifier {
  List name = ["iwatch", "Raddo","Airpods","Bag","Sport Boot","Gaming PC","Gaming Headphone","i Phone 13 Pro Max","Msi F1 Sirseies","T-shurt"];
  List price = ["5000", "10000","1500","500","1100","175000","5000","64999","399999","2299"];
  List image = [
    "assets/images/apple.png",
    "assets/images/rado.png",
    "assets/images/airpods.png",
    "assets/images/bag.png",
    "assets/images/boot.png",
    "assets/images/coumpter.png",
    "assets/images/headphone.jpg",
    "assets/images/i_phone 13_pro.png",
    "assets/images/msi.png",
    "assets/images/t-shirt.png",
  ];
  List Screen = [
    ProductScreeen(),
    ProductScreeen(),
    ProductScreeen(),
  ];
  int i=0;

  void changePage(int value){
    i = value;
    notifyListeners();
  }
}
