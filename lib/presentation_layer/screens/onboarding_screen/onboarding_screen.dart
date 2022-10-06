import 'package:caramellez/Presentation_Layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         decoration: const BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/images/onBoarding.png'),
               fit: BoxFit.cover
           )
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
           children:[
             SizedBox(height: MediaQuery.of(context).size.height/4,),
           //  Text('Ziead\n Emad \nALI',softWrap: true,maxLines: 3,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 50),),
             SizedBox(
                 height: MediaQuery.of(context).size.height/8,
                 child:const Image(image: AssetImage('assets/images/word2.png'),)
             ),
             const SizedBox(height: 4,),
             Container(
               height: 8,
               width: MediaQuery.of(context).size.width/4,
               decoration: const BoxDecoration(color: Colors.white),
             ),
             const Spacer(),
             Container(
               height: 50,
               width: MediaQuery.of(context).size.width/2,
               decoration:  BoxDecoration(
                   color: Colors.white,
                 borderRadius: BorderRadius.circular(12.0)
               ),
               child: MaterialButton(
                 onPressed:(){
                   navigateTo(context,const WelcomeScreen());
                 } ,
                 child: const Text('ابدأ الان',
                   style: TextStyle(color: Colors.black87),
                 ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height/10),
           ],
         ),
       ),
    );
  }
}


