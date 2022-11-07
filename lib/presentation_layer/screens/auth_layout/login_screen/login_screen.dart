import 'package:caramellez/business_layer/login_cubit/cubit.dart';
import 'package:caramellez/business_layer/login_cubit/states.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/home_layout/home_layout.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_button/default_button.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_form_field/default_form_field.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget
{
  LoginScreen({Key? key}) : super(key: key);

  static final emailController = TextEditingController();
  static final passwordController = TextEditingController();

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: formKey,
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
                        controller:emailController ,
                        type: TextInputType.emailAddress,
                        hintText: 'Email',
                        radius: 20,
                        fillColor: Colors.grey[200],
                        height: 60,
                        width:MediaQuery.of(context).size.width,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your email';
                          }
                          return null;
                        },
                        borderSide: BorderSide.none,
                        havePrefixIcon: false,
                      ),
                      const SizedBox(height: 10.0,),
                      DefaultFormField(
                        controller: passwordController,
                        type: TextInputType.visiblePassword,
                        hintText: 'Password',
                        prefix: Icons.remove_red_eye_outlined,
                        radius: 20,
                        fillColor: Colors.grey[200],
                        height: 60,
                        width:MediaQuery.of(context).size.width,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your password';
                          }
                          return null;
                        },
                        borderSide: BorderSide.none,
                        havePrefixIcon: true,
                      ),
                      const SizedBox(height: 20.0,),
                      ConditionalBuilder(
                        condition: state is! LoginLoadingState,
                        fallback: (BuildContext context)=>const Center(child: CircularProgressIndicator()),
                        builder: (BuildContext context) {
                          return DefaultButton(
                            function: () {
                              LoginCubit.get(context).login(
                                  mobile: emailController.text,
                                  password:passwordController.text);
                            },
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/14,
                            text: 'login',
                            isUpperCase: true,
                            background: defaultColor,
                            radius: 10,
                          );
                        },
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
                            'or login by',
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
                            height: MediaQuery.of(context).size.height/20,
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
            ),

          );
        },
        listener: (BuildContext context, Object? state) {
          if(state is LoginSuccessState)
          {
            navigateAndKill(context, const Layout());
          }
        },
      ),
    );
  }

}