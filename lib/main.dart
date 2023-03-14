
import 'dart:io';

import 'package:ad_classs1_otcaster/screen/view/setting/provider/set_provider.dart';
import 'package:ad_classs1_otcaster/screen/view/setting/view/isetting_screen.dart';
import 'package:ad_classs1_otcaster/screen/view/setting/view/setting_screen.dart';
import 'package:ad_classs1_otcaster/screen/view/sttaper/provider/stp_provider.dart';
import 'package:ad_classs1_otcaster/screen/view/sttaper/view/steper_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Settingprovider(),),
      ],
      child: Platform.isAndroid?android():ios(),
    ),
  );
}

Widget android()
{
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Settingscreen(),
    },
  );
}

Widget ios()
{
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => IsettingScreen(),
    },
  );
}