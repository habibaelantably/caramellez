import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/home_layout/home_layout.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_button/default_button.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_form_field/default_form_field.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget
{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/15,
                  width: double.infinity,
                  color: Colors.redAccent.withOpacity(0.2),
                  child:const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(' تخفيض على طلبك الأول داخل التطبيق 15% ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Din',
                          fontSize: 15.0,
                          color: Colors.red
                      ),
                    ),
                  ),
                ),
              ),
               SizedBox(height:MediaQuery.of(context).size.height/40,),
              DefaultFormField(
                  type: TextInputType.text,
                  hintText: 'Country',
                radius: 20,
                fillColor: Colors.grey[200],
              ),
              const SizedBox(height: 10.0,),
              DefaultFormField(
                  type: TextInputType.text,
                  hintText: 'Email',
                radius: 20,
                fillColor: Colors.grey[200],
              ),
              const SizedBox(height: 10.0,),
              DefaultFormField(
                  type: TextInputType.text,
                  hintText: 'Password',
                  prefix: Icons.remove_red_eye_outlined,
                  radius: 20,
                  fillColor: Colors.grey[200],

              ),
              const SizedBox(height: 20.0,),
              DefaultButton(
                  function: () {
                    navigateTo(context, const Layout());
                  },
                  width: MediaQuery.of(context).size.width/1,
                  height: MediaQuery.of(context).size.height/15,
                  text: 'الدخول',
                isUpperCase: false,
                background: defaultColor,
                  ),
               SizedBox(height: MediaQuery.of(context).size.height/55,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2.0,
                    color: Colors.grey,
                    width: 20.0,
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  const Text(
                    'او التسجيل بواسطة',
                    style: TextStyle(
                        fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.grey,
                    width: 20.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: MediaQuery.of(context).size.width/7,
                    height: MediaQuery.of(context).size.height/16,
                  ),
                   SizedBox(
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Image.asset(
                    'assets/images/facebook.png',
                    width: MediaQuery.of(context).size.width/7,
                    height: MediaQuery.of(context).size.height/18,
                  ),
                ],
              ),
              const SizedBox(
                height: 13.0,
              ),
              Column(
                children: const [
                  Text("بعد انشاء حساب تكون قد وافقت على سياسة الخصوصية و شروط الاستخدام ",
                    style: TextStyle(
                        fontFamily: 'Din',
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                    ),

                  ),
                  Text('الخاصه بتطبيق كراميله',
                    style: TextStyle(
                        fontFamily: 'Din',
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }

}