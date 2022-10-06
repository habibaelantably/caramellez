
 import 'package:caramellez/presentation_layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/help_screen/help-screen.dart';
import 'package:caramellez/presentation_layer/screens/home_layout/home_layout.dart';
import 'package:caramellez/presentation_layer/screens/order_screen/order_screen.dart';
import 'package:caramellez/presentation_layer/widgets/profile_widget/profile_widget.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget
 {
  const profileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.grey[50],
          leading:   Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset('assets/images/whatsapp.png',),
          ),
          title: const Text("My Profile",
            style: TextStyle(
                fontFamily: 'Din',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),

          ),
          centerTitle: true,


        ),
        body:SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const CircleAvatar(
                 backgroundImage: AssetImage('assets/images/logo.png'),
                  radius: 55,
                ),
                const SizedBox(height: 10,),
                const Text('habiba.g.elantably@gmail.com'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('credit : '),
                    Text('0 SA'),
                  ],
                ),
                SizedBox(height:MediaQuery.of(context).size.height/15,),
                Divider(color: Colors.grey[400],thickness: 2.0,),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    InkWell(
                        onTap: (){
                          navigateTo(context, const Layout());
                        },
                        child: const BuildProfileItem(profileItem: 'Home Page',)),
                    const BuildProfileItem(profileItem: 'credit',),
                    InkWell(
                        onTap: (){navigateTo(context, const OrderScreen());},
                        child: const BuildProfileItem(profileItem: 'My orders',)),
                    const BuildProfileItem(profileItem: 'edit profile',),
                    InkWell(
                        onTap: (){
                          navigateTo(context, const HelpScreen());
                        },
                        child: const BuildProfileItem(profileItem: 'help',)),
                    const BuildProfileItem(profileItem: 'logout',),
                     BuildProfileIconItem(image1: 'assets/images/facebook.png',image2: 'assets/images/instagram.png'),
                     BuildProfileIconItem(image1: 'assets/images/snapchat.png',image2: 'assets/images/twitter.png'),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }

 }