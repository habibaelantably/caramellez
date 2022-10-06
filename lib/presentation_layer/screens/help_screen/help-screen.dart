
import 'package:caramellez/presentation_layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/home_layout/home_layout.dart';
import 'package:caramellez/presentation_layer/screens/welcome/welcome_screen.dart';
import 'package:caramellez/presentation_layer/widgets/help_widget/help_widget.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/divider/divider.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget
{
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        leading:  Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset('assets/images/whatsapp.png',),
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


      ),
     body:Padding(
       padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/15),
       child: Column(
         children:  [
           const Center(child: Image(image: AssetImage('assets/images/logo.png'),)),
           SizedBox(height:MediaQuery.of(context).size.height/15,),
           const MyDivider(),
            BuildHelpItem(helpItem: 'Home Page',onTap: (){navigateTo(context, const Layout());},),
            BuildHelpItem(helpItem: 'change language/change currency',onTap: (){navigateTo(context, const WelcomeScreen());},),
            BuildHelpItem(helpItem: 'about Us',onTap: (){navigateTo(context, const Layout());},),
            BuildHelpItem(helpItem: 'Terms and conditions',onTap: (){navigateTo(context, const Layout());},),
            BuildHelpItem(helpItem: 'Contact Us',onTap: (){navigateTo(context, const Layout());},),
            BuildHelpItem(helpItem: 'Sizes',onTap: (){navigateTo(context, const Layout());},),
            BuildHelpItem(helpItem: 'Return rules',onTap: (){navigateTo(context, const Layout());},),
            BuildHelpItem(helpItem: 'Common Questions',onTap: (){navigateTo(context, const Layout());},),

         ],
       ),
     )
    );
  }

}
