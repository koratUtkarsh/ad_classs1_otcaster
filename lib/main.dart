import 'dart:io';
import 'package:ad_classs1_otcaster/screen/view/products123/provider/produt_provider.dart';
import 'package:ad_classs1_otcaster/screen/view/products123/view/tabbar_screen.dart';
import 'package:ad_classs1_otcaster/screen/view/setting/view/isetting_screen.dart';
import 'package:ad_classs1_otcaster/screen/view/setting/view/setting_screen.dart';
import 'package:ad_classs1_otcaster/screen/view/sttaper/provider/stp_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider(),),
        ChangeNotifierProvider(create: (context) => ProductProvider(),),
      ],
      child: Platform.isAndroid?ios():android(),
    ),
  );
}

Widget android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Settingscreen(),
    },
  );
}

Widget ios() {
  return CupertinoApp(
    initialRoute: 'store',
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => IsettingScreen(),
      'store':(p0) => TabNavigation()
    },
  );
}