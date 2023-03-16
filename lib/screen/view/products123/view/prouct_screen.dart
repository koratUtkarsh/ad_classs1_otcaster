import 'package:ad_classs1_otcaster/screen/view/products123/provider/produt_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ProductScreeen extends StatefulWidget {
  const ProductScreeen({Key? key}) : super(key: key);

  @override
  State<ProductScreeen> createState() => _ProductScreeenState();
}

class _ProductScreeenState extends State<ProductScreeen> {
  ProductProvider? productprovidertrue,productproviderfalse;
  @override
  Widget build(BuildContext context) {
    productproviderfalse = Provider.of<ProductProvider>(context,listen: false);
    productprovidertrue = Provider.of<ProductProvider>(context,listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle:  Text("Cupertino Stor"),
        ),
        child: ListView.builder(
          itemCount: productproviderfalse!.image.length,itemBuilder: (context, index) {
          return CupertinoListTile(padding: EdgeInsets.all(10),leadingSize: 70,
            title: Text("${productproviderfalse!.name[index]}"),leading:
            Container(
              height: 100,
                width: 100,
                color: CupertinoColors.lightBackgroundGray,
                child: Image.asset("${productproviderfalse!.image[index]}"))
            ,subtitle: Text("${productproviderfalse!.price[index]}"),
            trailing: Icon(CupertinoIcons.add_circled,
                color: CupertinoColors.activeBlue),);
        },)
    ),);
  }
}
