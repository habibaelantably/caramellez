
import 'package:caramellez/Presentation_Layer/Screens/auth_layout/auth_layout.dart';
import 'package:caramellez/Presentation_Layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_button/default_button.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/divider/divider.dart';
import 'package:caramellez/presentation_layer/widgets/welcome_widget/bottomsheets_widgets/country_sheet_widget/country%D9%8D_sheet_widget.dart';
import 'package:caramellez/presentation_layer/widgets/welcome_widget/bottomsheets_widgets/currency_sheet_widget/currency_sheet_widget.dart';
import 'package:caramellez/presentation_layer/widgets/welcome_widget/bottomsheets_widgets/language_sheet_widget/language_sheet_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('مرحبا بكم فى',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Etab',
                    fontSize: 40
                ),
              ),
              const SizedBox(height: 10.0,),
              const Image(image: AssetImage('assets/images/logo.png')),
               SizedBox(height: MediaQuery.of(context).size.height/15),
               const MyDivider(),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 14.0, top: 0.0, bottom: 15.0),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (_) =>const CountryBottomSheet()

                    );
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_back_ios_outlined),
                      const Spacer(),
                      Column(
                        children: const [
                          Text('البلد',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Din',
                                fontSize: 20.0,
                                color: Colors.grey
                            ),
                          ),
                          Text('الكويت',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Din',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ],
                      )
                    ],

                  ),
                ),
              ),
               const MyDivider(),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 14.0, top: 0.0, bottom: 15.0),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (_) =>
                          const LanguageBottomSheet()
                    );
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_back_ios_outlined),
                      const Spacer(),
                      Column(
                        children: const [
                          Text('اللغه',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Din',
                                fontSize: 20.0,
                                color: Colors.grey
                            ),
                          ),
                          Text('العربيه',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Din',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ],
                      )
                    ],

                  ),
                ),
              ),
               MyDivider(),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 14.0, top: 0.0, bottom: 15.0),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (_) => const CurrencyBottomSheet()
                    );
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_back_ios_outlined),
                      const Spacer(),
                      Column(
                        children: const [
                          Text('العمله',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Din',
                                fontSize: 20.0,
                                color: Colors.grey
                            ),
                          ),
                          Text('د.ك',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Din',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ],
                      )
                    ],

                  ),
                ),
              ),
               MyDivider(),
              const SizedBox(height: 40.0,),
              DefaultButton(
                  function: () {
                    navigateAndKill(context, const AuthLayout());
                  },
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 60,
                  text: 'ابدأ التسوق',
                isUpperCase: false,
                background: defaultColor,
              ),
              const SizedBox(height: 8.0,),
              const Text('يمكنك تغيير بياناتك لاحقا من "الاعدادات" بكل سهولة',
                style: TextStyle(
                    fontFamily: 'Din',
                    fontSize: 14.40,
                    color: Colors.grey),
              )

            ],

          ),
        ),
      ),
    );
  }

}


