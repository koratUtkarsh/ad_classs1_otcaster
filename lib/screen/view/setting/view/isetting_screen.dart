import 'package:ad_classs1_otcaster/screen/view/setting/provider/set_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IsettingScreen extends StatefulWidget {
  const IsettingScreen({Key? key}) : super(key: key);

  @override
  State<IsettingScreen> createState() => _IsettingScreenState();
}

class _IsettingScreenState extends State<IsettingScreen> {
  Settingprovider? utkproviderTrue,utkproviderFalse;
  @override
  Widget build(BuildContext context) {
    utkproviderFalse = Provider.of<Settingprovider>(context,listen: false);
    utkproviderTrue = Provider.of<Settingprovider>(context,listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Settings Ui",style: TextStyle(color: Colors.white,letterSpacing: 1),),
          backgroundColor: Colors.deepOrange.shade500,
        ),
        child: Padding(
          padding:  EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(color: CupertinoColors.systemGrey6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text(
                  "      Common",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold,),),
                SizedBox(height: 15,),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.language,color: Colors.black38),title: Text("Language",),trailing:  Row(
                    children: [
                      Text("Engilsh",style: TextStyle(color: Colors.black38),),
                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.black26),
                    ],
                  ),
                ),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.cloud_outlined,color: Colors.black38,),title: Text("Environment"),trailing:  Row(
                    children: [
                      Text("Production",style: TextStyle(color: Colors.black38),),
                      Icon(Icons.arrow_forward_ios,color: Colors.black26),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "      Account",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.phone,color: Colors.black38),title: Text("Phone number"),trailing: Icon(Icons.arrow_forward_ios,color: Colors.black26),
                ),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.email,color: Colors.black38),title: Text("Email"),trailing: Icon(Icons.arrow_forward_ios,color: Colors.black26),
                ),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.logout,color: Colors.black38),title: Text("Sign out"),trailing: Icon(Icons.arrow_forward_ios,color: Colors.black26),
                ),
                SizedBox(height: 15,),
                Text(
                  "      Secutiry",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.screen_lock_portrait,color: Colors.black38),title: Text("Lock app in background"),trailing: CupertinoSwitch(activeColor: Colors.deepOrange,value: utkproviderTrue!.isSwitched,
                  onChanged: (bool value) {
                    utkproviderFalse!.changevalue1(value);
                  },),
                ),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.fingerprint,color: Colors.black38),title: Text("Use fingerprint"),trailing: CupertinoSwitch(activeColor: Colors.deepOrange,value: utkproviderTrue!.isSwitched1, onChanged: (bool value) {
                  utkproviderFalse!.changevalue2(value);
                },),),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.lock,color: Colors.black38),title: Text("Change password"),trailing: CupertinoSwitch(activeColor: Colors.deepOrange,value: utkproviderTrue!.isSwitched2, onChanged: (bool value) {
                  utkproviderFalse!.changevalue3(value);
                },),
                ),
                SizedBox(height: 20,),
                Text(
                  "      Misc",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.save,color: Colors.black38),title: Text("Terms of Service"),trailing: Icon(Icons.arrow_forward_ios,color: Colors.black26),
                ),
                CupertinoListTile(
                  backgroundColor: CupertinoColors.white,
                  leading: Icon(Icons.document_scanner,color: Colors.black38),title: Text("Poen source licenses"),trailing: Icon(Icons.arrow_forward_ios,color: Colors.black26),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
