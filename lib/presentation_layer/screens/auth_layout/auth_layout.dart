import 'package:caramellez/Presentation_Layer/Screens/auth_layout/login_screen/login_screen.dart';
import 'package:caramellez/presentation_layer/screens/auth_layout/register_screen/Register_screen.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatefulWidget{
  const AuthLayout({Key? key}) : super(key: key);

  @override
  State<AuthLayout> createState() => _AuthLayoutState();
}

class _AuthLayoutState extends State<AuthLayout> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController =TabController(length: 2, vsync: this);
  return Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/15),
        child: Column(
          children: [
            const Center(child: Image(image: AssetImage('assets/images/logo.png'),)),
             SizedBox(height: MediaQuery.of(context).size.height/35,),
            Container(
              height:MediaQuery.of(context).size.height/12,
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 10.0,
                tabs: const <Widget>[
                  Text('تسجيل الدخول',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Din',
                        fontSize: 20.0,
                        color: Colors.black
                    ),
                  ),
                  Text('حساب جديد',
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
            Container(
              width: double.infinity,
              height:600.0,
              child: TabBarView(
                controller: tabController,
                children:const <Widget> [
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