import 'package:ad_classs1_otcaster/screen/view/sttaper/provider/stp_provider.dart';
import 'package:flutter/material.dart';
//import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:provider/provider.dart';

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  home_provider? h1;
  GlobalKey<ScaffoldState> _key = GlobalKey();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtDob = TextEditingController();
  TextEditingController txtGender = TextEditingController();
  TextEditingController txtLocation = TextEditingController();
  TextEditingController txtNationality = TextEditingController();
  TextEditingController txtReligion = TextEditingController();
  TextEditingController txtLanguage = TextEditingController();
  TextEditingController txtBiography = TextEditingController();

  @override
  Widget build(BuildContext context) {
    h1 = Provider.of<home_provider>(context);
    return SafeArea(
      child: Scaffold(
        key: _key,
        // appBar: NewGradientAppBar(
        //   title: Text('Edit Your Profile'),
        //   leading: Icon(Icons.arrow_back),
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.blue,
        //       Colors.lightBlueAccent,
        //       Colors.greenAccent,
        //       Colors.green.shade300
        //     ],
        //   ),
        // ),
        body: Stepper(
          steps: [
            Step(
              title: Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtName,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Enter Your Full Name ',
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Mobile No.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtName,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Enter Your Mobile Number',
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Gender",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children:  [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtPhone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Your gender',
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Enter your Location ',
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Bank Dital",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),),
                      hintText: 'Enter your BankName',
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),),
                      hintText: 'Enter your Account Number',
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),),
                      hintText: 'Enter your IFSC code',
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: txtGender,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),),
                      hintText: 'Enter your Email Id ',
                      labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Done",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Your Form Submited \n     Thank You ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
                ],
              ),
            ),
          ],
          currentStep: Provider.of<home_provider>(context, listen: false).i,
          onStepContinue: () {
            if (Provider.of<home_provider>(context, listen: false).i < 11) {
              Provider.of<home_provider>(context, listen: false).continu_step();
            }
          },
          onStepCancel: () {
            if (Provider.of<home_provider>(context, listen: false).i > 0) {
              Provider.of<home_provider>(context, listen: false).back_step();
            }
          },
        ),
      ),
    );
  }
}