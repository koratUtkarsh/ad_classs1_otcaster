import 'package:ad_classs1_otcaster/screen/view/products123/view/product_screen2.dart';
import 'package:ad_classs1_otcaster/screen/view/products123/view/product_screen3.dart';
import 'package:ad_classs1_otcaster/screen/view/products123/view/prouct_screen.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider extends ChangeNotifier {
  DateTime del = DateTime(2023, 14, 3, 12, 52);

  void changedate(DateTime news)
  {
    del = news;
    notifyListeners();
  }
  List name = [
    "iwatch",
    "Raddo",
    "Airpods",
    "Bag",
    "Sport Boot",
    "Gaming PC",
    "Gaming Headphone",
    "i Phone 13 Pro Max",
    "Msi F1 Sirseies",
    "T-shurt"
  ];
  List price = [
    "5000",
    "10000",
    "1500",
    "500",
    "1100",
    "175000",
    "5000",
    "64999",
    "399999",
    "2299"
  ];
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
  List name1 = [
    "BUSH!",
    "FISHING",
    "NIKE",
    "NIKE_X!",
    "T-shurt"
  ];
  List img = [
    "assets/images/t_2.png",
    "assets/images/t_3.png",
    "assets/images/t_4.jpg",
    "assets/images/t_5.jpg",
    "assets/images/t-shirt.png"
  ];
  List price1 = [
    "5000",
    "10000",
    "1500",
    "500",
    "1100",
  ];
  List Screen = [
    ProductScreeen(),
    ProductScreen2(),
    ProductScreen3(),
  ];

  int i = 0;

  void changePage(int value) {
    i = value;
    notifyListeners();
  }
}
