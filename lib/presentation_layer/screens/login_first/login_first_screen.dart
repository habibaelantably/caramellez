import 'dart:io';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/auth_layout/auth_layout.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_button/default_button.dart';
import 'package:flutter/material.dart';

class LoginFirstScreen extends StatelessWidget{
  const LoginFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        leading:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: IconButton(
            icon: Platform.isIOS? const Icon(Icons.arrow_back_ios,color: Colors.black,):
            const Icon(Icons.arrow_back,color: Colors.black,),
            onPressed:(){
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
        ),
        title: const Text("Help",
          style: TextStyle(
              fontFamily: 'Din',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
                onTap: (){},
                child: Image.asset('assets/images/whatsapp.png',
                  height: MediaQuery.of(context).size.height/13,
                  width: MediaQuery.of(context).size.width/13,)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: DefaultButton(
            text: 'login first',
            function: (){
              navigateTo(context, const AuthLayout());
            },
            isUpperCase: true,
            height: 60,
            width: MediaQuery.of(context).size.width,
            background: defaultColor,
            radius: 10,

          ),
        ),
      ),

    );
  }

}