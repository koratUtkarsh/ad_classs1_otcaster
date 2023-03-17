import 'package:ad_classs1_otcaster/screen/view/products123/provider/produt_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ProductScreen2 extends StatefulWidget {
  const ProductScreen2({Key? key}) : super(key: key);

  @override
  State<ProductScreen2> createState() => _ProductScreen2State();
}

class _ProductScreen2State extends State<ProductScreen2> {
  ProductProvider? productprovidertrue,productproviderfalse;
  @override
  Widget build(BuildContext context) {
    productproviderfalse = Provider.of<ProductProvider>(context,listen: false);
    productprovidertrue = Provider.of<ProductProvider>(context,listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
          child: Column(
            children: [
              CupertinoTextField(padding: EdgeInsets.all(10),decoration: BoxDecoration(),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: productproviderfalse!.name1.length,itemBuilder: (context, index) {
                  return CupertinoListTile(padding: EdgeInsets.all(10),leadingSize: 70,
                    title: Text("${productprovidertrue!.name1[index]}"),leading:
                    Container(
                        height: 100,
                        width: 100,
                        color: CupertinoColors.lightBackgroundGray,
                        child: Image.asset("${productproviderfalse!.img[index]}"))
                    ,subtitle: Text("${productproviderfalse!.price1[index]}"),
                    trailing: Icon(CupertinoIcons.add_circled,
                        color: CupertinoColors.activeBlue),);
                },),
              ),
            ],
          )
      ),);
  }
}
