import 'package:ad_classs1_otcaster/screen/view/products123/provider/produt_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen3 extends StatefulWidget {
  const ProductScreen3({Key? key}) : super(key: key);

  @override
  State<ProductScreen3> createState() => _ProductScreen3State();
}

class _ProductScreen3State extends State<ProductScreen3> {
  ProductProvider? productprovidertrue,productproviderfalse;

  @override
  Widget build(BuildContext context) {
    productproviderfalse = Provider.of<ProductProvider>(context,listen: false);
    productprovidertrue = Provider.of<ProductProvider>(context,listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.black38,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 130,
                width: double.infinity,
                color: Colors.black12,
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Shopping Cart",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    CupertinoTextField.borderless(
                      prefix: Icon(
                        CupertinoIcons.person_alt,
                        color: Colors.black38,
                      ),
                      placeholder: "Name",
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: CupertinoTextField.borderless(
                      prefix: Icon(
                        CupertinoIcons.mail_solid,
                        color: Colors.black38,
                      ),
                      placeholder: "Email",
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    CupertinoTextField.borderless(
                      prefix: Icon(
                        CupertinoIcons.location_solid,
                        color: Colors.black38,
                      ),
                      placeholder: "Location",
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: CupertinoTextField.borderless(
                  prefix: Icon(
                    CupertinoIcons.time,
                    color: Colors.black38,
                  ),
                  placeholder: "Delivery Time",
                  suffix: Text(
                      " ${productprovidertrue!.del.day}-${productprovidertrue!.del.month}-${productprovidertrue!.del.year} ${productprovidertrue!.del.hour}:${productprovidertrue!.del.minute} "),
                ),
              ),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (value) {
                    productproviderfalse!.changedate(value);
                  },
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 41,
                width: double.infinity,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: 50,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Image.asset("assets/images/t_3.png"),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("T-Shirt"),
                          Text("1100",style: TextStyle(fontSize: 13,color: Colors.black54),),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Text("1100"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                height: 41,
                width: double.infinity,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: 50,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Image.asset("assets/images/headphone.jpg"),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Head Phone"),
                          Text("5499",style: TextStyle(fontSize: 13,color: Colors.black54),),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Text("5499"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                height: 41,
                width: double.infinity,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: 50,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Image.asset("assets/images/coumpter.png"),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Gaming PC"),
                          Text("175000",style: TextStyle(fontSize: 13,color: Colors.black54),),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Text("175000"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Shipping 181599",style: TextStyle(fontSize: 10,color: Colors.black45),),
                    Text("Tax 21",style: TextStyle(fontSize: 10,color: Colors.black45),),
                    Text("Total 552099"),
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