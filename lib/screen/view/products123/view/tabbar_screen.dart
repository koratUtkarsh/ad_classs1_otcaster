import 'package:ad_classs1_otcaster/screen/view/products123/provider/produt_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({Key? key}) : super(key: key);

  @override
  State<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  ProductProvider? productprovidertrue,productproviderfalse;
  @override
  Widget build(BuildContext context) {
    productproviderfalse = Provider.of<ProductProvider>(context,listen: false);
    productprovidertrue = Provider.of<ProductProvider>(context,listen: true);
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: CupertinoPageScaffold(
          backgroundColor: Colors.white,
          child: Stack(
            children: [
              productproviderfalse!.Screen[productprovidertrue!.i],
              Align(
                alignment: Alignment.bottomCenter,
                child: CupertinoTabBar(
                  onTap: (value) {
                    productproviderfalse!.changePage(value);
                  },
                  currentIndex: productprovidertrue!.i,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home),
                      label: "home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.search),
                      label: "home"
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.cart),
                        label: "home"
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
