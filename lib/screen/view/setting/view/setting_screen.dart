import 'package:ad_classs1_otcaster/screen/view/setting/provider/set_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settingscreen extends StatefulWidget {
  const Settingscreen({Key? key}) : super(key: key);

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
  Settingprovider? utkproviderTrue,utkproviderFalse;
  @override
  Widget build(BuildContext context) {
    utkproviderFalse = Provider.of<Settingprovider>(context,listen: false);
    utkproviderTrue = Provider.of<Settingprovider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(
            "Setting Ui"), backgroundColor: Colors.deepOrange.shade500),
        body: Padding(
          padding:  EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text(
                "      Common",style: TextStyle(color: Colors.deepOrange.shade500,fontWeight: FontWeight.bold,),),
              SizedBox(height: 15,),
              ListTile(
                leading: Icon(Icons.language),title: Text("Language"),subtitle: Text("Engilsh"),
              ),
              Container(height: 1,width: double.infinity,color: Colors.black12),
              ListTile(
                leading: Icon(Icons.cloud_outlined),title: Text("Environment"),subtitle: Text("Production"),
              ),
              SizedBox(height: 15,),
              Text(
                "      Account",style: TextStyle(color: Colors.deepOrange.shade500,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              ListTile(
                leading: Icon(Icons.phone),title: Text("Phone number"),
              ),
              Container(height: 1,width: double.infinity,color: Colors.black12),
              SizedBox(height: 8,),
              ListTile(
                leading: Icon(Icons.email),title: Text("Email"),
              ),
              SizedBox(height: 8,),
              Container(height: 1,width: double.infinity,color: Colors.black12),
              ListTile(
                leading: Icon(Icons.logout),title: Text("Sign out"),
              ),
              SizedBox(height: 15,),
              Text(
                "      Secutiry",style: TextStyle(color: Colors.deepOrange.shade500,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              ListTile(
                leading: Icon(Icons.screen_lock_portrait),title: Text("Lock app in background"),trailing: Switch(activeColor: Colors.deepOrange,value: utkproviderTrue!.isSwitched,
                onChanged: (bool value) {
                  utkproviderFalse!.changevalue1(value);
                },),
              ),
              Container(height: 1,width: double.infinity,color: Colors.black12),
              SizedBox(height: 8,),
              ListTile(
                leading: Icon(Icons.fingerprint),title: Text("Use fingerprint"),trailing: Switch(activeColor: Colors.deepOrange,value: utkproviderTrue!.isSwitched1, onChanged: (bool value) {
                  utkproviderFalse!.changevalue2(value);
              },),),
              SizedBox(height: 8,),
              Container(height: 1,width: double.infinity,color: Colors.black12),
              ListTile(
                leading: Icon(Icons.lock),title: Text("Change password"),trailing: Switch(activeColor: Colors.deepOrange,value: utkproviderTrue!.isSwitched2, onChanged: (bool value) {
                  utkproviderFalse!.changevalue3(value);
              },),
              ),
              SizedBox(height: 15,),
              Text(
                "      Misc",style: TextStyle(color: Colors.deepOrange.shade500,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
