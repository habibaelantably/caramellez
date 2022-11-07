import 'package:caramellez/presentation_layer/screens/auth_layout/register_screen/Register_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen/login_screen.dart';

class AuthLayout extends StatefulWidget{
   const AuthLayout({Key? key}) : super(key: key);


   @override
  State<AuthLayout> createState() => _AuthLayoutState();
}

class _AuthLayoutState extends State<AuthLayout> with TickerProviderStateMixin{

  TabController? tabController;

  @override
  void initState() {
    super.initState();
     RegisterScreen.nameController;
     RegisterScreen.emailController;
     RegisterScreen.phoneController;
     RegisterScreen.passwordController;
     RegisterScreen.confirmPasswordController;
     LoginScreen.emailController;
     LoginScreen.passwordController;

     tabController = TabController(length: 2, vsync: this);
  }

  // @override
  // // ignore: must_call_super
  // void didChangeDependencies() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/15),
        child: Column(
          children: [
            const Center(child: Image(image: AssetImage('assets/images/logo.png'),)),
             SizedBox(height: MediaQuery.of(context).size.height/35,),
            SizedBox(
              height:MediaQuery.of(context).size.height/12,
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 7.0,
                tabs: const <Widget>[
                  Text('Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Din',
                        fontSize: 20.0,
                        color: Colors.black
                    ),
                  ),
                  Text('Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Din',
                        fontSize: 20.0,
                        color: Colors.black
                    ),
                  ),
                ],

              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height/1,
              child: TabBarView(
                controller: tabController,
                children: <Widget> [
                  LoginScreen(),
                  RegisterScreen()
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
  }
}