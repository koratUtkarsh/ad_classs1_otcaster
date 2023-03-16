import 'package:ad_classs1_otcaster/screen/view/sttaper/provider/stp_provider.dart';
import 'package:flutter/material.dart';
//import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:provider/provider.dart';

class IsteprScreen extends StatefulWidget {
  const IsteprScreen({Key? key}) : super(key: key);

  @override
  State<IsteprScreen> createState() => _IsteprScreenState();
}

class _IsteprScreenState extends State<IsteprScreen> {
  home_provider? h1;
  @override
  Widget build(BuildContext context) {
    h1 = Provider.of<home_provider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Stepper App"),backgroundColor: Colors.deepOrange.shade500),

        body: Stepper(
          steps: [
            Step(
              title: Text(
                "SignUp",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person,),
                          hintText: "Full Name*",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email,),
                          hintText: "Email Id",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock,),
                          hintText: "Password*",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Confarm Password*",
                          prefixIcon: Icon(Icons.lock,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Enter Your Mobile Number',
                          labelStyle: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                          ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email,),
                          hintText: "Password*",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Text("Thank You",style: TextStyle(fontSize: 20),)
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