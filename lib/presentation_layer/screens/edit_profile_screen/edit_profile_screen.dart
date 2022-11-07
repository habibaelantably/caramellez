import 'dart:io';

import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_button/default_button.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_form_field/default_form_field.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget
{
  final TextEditingController nameController =TextEditingController();
  final TextEditingController emilController =TextEditingController();
  final TextEditingController phoneController =TextEditingController();

  static final formKey = GlobalKey<FormState>();


  EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: formKey,
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
        leading:  Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child:InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Platform.isIOS? const Icon(Icons.arrow_back_ios,color: Colors.black,):
              const Icon(Icons.arrow_back,color: Colors.black,)

          ),
        ),
        title: const Text("Edit Profile",
          style: TextStyle(
              fontFamily: 'Din',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 20.0,right: 20,top: MediaQuery.of(context).size.height/9),
          child: Column(
            children: [
              const Center(child: Image(image: AssetImage('assets/images/logo.png'))),
              SizedBox(height: MediaQuery.of(context).size.height/6,),
              DefaultFormField(
                  controller: nameController,
                  type: TextInputType.name,
                  width: MediaQuery.of(context).size.width,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your name';
                    }
                    return null;
                  },
                fillColor: Colors.grey[300],
                borderSide: const BorderSide(color: defaultColor,width: 1.0),
                radius: 10,
                havePrefixIcon: false,
              ),
              const SizedBox(height: 20,),
              DefaultFormField(
                  controller: emilController,
                  type: TextInputType.name,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/10,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your email';
                    }
                    return null;
                  },
                fillColor: Colors.grey[300],
                borderSide: const BorderSide(color: defaultColor,width: 1.0),
                radius: 10,
                havePrefixIcon: false,
              ),
              const SizedBox(height: 20,),
              DefaultFormField(
                  controller: nameController,
                  type: TextInputType.name,
                  width: MediaQuery.of(context).size.width,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your mobile';
                    }
                    return null;
                  },
                fillColor: Colors.grey[300],
                borderSide: const BorderSide(color: defaultColor,width: 1.0),
                radius: 10,
                havePrefixIcon: false,
              ),
              SizedBox(height: MediaQuery.of(context).size.height/6,),
              DefaultButton(
                  isUpperCase: true,
                  text: 'Edit Profile',
                  function: (){},
                  width: MediaQuery.of(context).size.width,
                  background: defaultColor,
                  radius: 10.0,
              )
            ],
          ),
        ),
      )
    );
  }

}