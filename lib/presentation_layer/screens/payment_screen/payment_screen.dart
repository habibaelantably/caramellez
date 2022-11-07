import 'dart:io';

import 'package:caramellez/business_layer/radio_button_cubit/radio_button_cubit.dart';
import 'package:caramellez/business_layer/radio_button_cubit/radio_button_states.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_button/default_button.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_form_field/default_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentScreen extends StatefulWidget
{

  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var governorateController = TextEditingController();
  var streetController = TextEditingController();
  var homeNumberController = TextEditingController();
  var addressController = TextEditingController();
  var anotherNumberController = TextEditingController();


  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formKey,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[300],
        leading:  Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child:InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Platform.isIOS? const Icon(Icons.arrow_back_ios,color: Colors.black,):
              const Icon(Icons.arrow_back,color: Colors.black,)),
        ),
        title: const Text("payment",
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              FittedBox(child: Text('Delivery Address',style: TextStyle(fontSize: 20,color: Colors.grey[700]),)),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
              ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                               const FittedBox(
                                 child: Text('country',
                                  style: TextStyle(
                                    fontFamily: 'Din',
                                    fontSize: 16,
                                    color: defaultColor
                              ),),
                               ),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                //height: MediaQuery.of(context).size.height/22,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                      items:  countries?.map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child:Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: FittedBox(child: Text(value,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
                                          ),
                                        );
                                      }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedCountry = value!;
                                      });
                                    },
                                    value: selectedCountry,
                                    hint: const Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: FittedBox(child: Text('select country',style: TextStyle(color: defaultColor,fontSize: 14),)),
                                    ),
                                    iconDisabledColor: defaultColor,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                       const Divider(thickness: 1,),
                      FittedBox(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:   [
                               const FittedBox(
                                 child: Text('Governorate',
                                  style: TextStyle(
                                    fontFamily: 'Din',
                                      fontSize: 16,
                                    color: defaultColor
                              ),),
                               ),

                              DefaultFormField(
                                controller: governorateController,
                                type: TextInputType.text,
                                height: MediaQuery.of(context).size.height/22,
                                width: MediaQuery.of(context).size.width/2,
                                radius: 30,
                                hintText: 'Governorate',
                                hintColor: Colors.black,
                                fillColor: Colors.grey[400],
                                borderSide: BorderSide.none,
                                havePrefixIcon: false,

                              )

                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Divider(thickness: 1,),
                      FittedBox(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:   [
                               const FittedBox(
                                 child: Text('street',
                                  style: TextStyle(
                                      fontFamily: 'Din',
                                      fontSize: 16,
                                      color: defaultColor
                                  ),),
                               ),

                              DefaultFormField(
                                controller: streetController,
                                type: TextInputType.text,
                                height: MediaQuery.of(context).size.height/22,
                                width: MediaQuery.of(context).size.width/2,
                                radius: 30,
                                hintText: 'street',
                                hintColor: Colors.black,
                                fillColor: Colors.grey[400],
                                borderSide: BorderSide.none,
                                havePrefixIcon: false,


                              )

                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Divider(thickness: 1,),
                      FittedBox(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:   [
                               const Text('Home number',
                                style: TextStyle(
                                    fontFamily: 'Din',
                                    fontSize: 16,
                                    color: defaultColor
                                ),),

                              DefaultFormField(
                                controller: homeNumberController,
                                type: TextInputType.text,
                                height: MediaQuery.of(context).size.height/17,
                                width: MediaQuery.of(context).size.width/2,
                                radius: 30,
                                hintColor: Colors.black,
                                hintText: 'Home number',
                                fillColor: Colors.grey[400],
                                borderSide: BorderSide.none,
                                havePrefixIcon: false,


                              )

                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Divider(thickness: 1,),
                      FittedBox(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:   [
                               const FittedBox(
                                 child: Text('Address',
                                  style: TextStyle(
                                      fontFamily: 'Din',
                                      fontSize: 16,
                                      color: defaultColor
                                  ),),
                               ),

                              DefaultFormField(
                                controller: addressController,
                                type: TextInputType.text,
                                height: MediaQuery.of(context).size.height/17,
                                width: MediaQuery.of(context).size.width/2,
                                radius: 30,
                                hintText: 'Address',
                                hintColor: Colors.black,
                                fillColor: Colors.grey[400],
                                borderSide: BorderSide.none,
                                havePrefixIcon: false,


                              )

                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Divider(thickness: 1,),
                      FittedBox(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:   [
                                const Text('Landing number',
                                  style: TextStyle(
                                      fontFamily: 'Din',
                                      fontSize: 16,
                                      color: defaultColor
                                  ),),

                                DefaultFormField(
                                  controller: anotherNumberController,
                                  type: TextInputType.text,
                                  height: MediaQuery.of(context).size.height/17,
                                  width: MediaQuery.of(context).size.width/2,
                                  radius: 30,
                                  hintColor: Colors.black,
                                  hintText: 'Landing number',
                                  fillColor: Colors.grey[400],
                                  borderSide: BorderSide.none,
                                  havePrefixIcon: false,
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
               Text('Payment Method',style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
              const SizedBox(height: 10.0,),
              BlocProvider(
                create: (context)=>RadioButtonCubit(),
                child: BlocConsumer<RadioButtonCubit,RadioButtonStates>(
                  listener: (BuildContext context, state) {},
                  builder: (BuildContext context, Object? state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  const CircleAvatar(backgroundImage:AssetImage('assets/images/Knet.jpeg') ,),
                                  const Text('Knet',style: TextStyle(color: Colors.black),),
                                  Radio(
                                    value: 1,
                                    groupValue: RadioButtonCubit.get(context).selectedRadioButtonValue,
                                    onChanged: (int? value)
                                    {
                                      RadioButtonCubit.get(context).changeRadioButtonState(value);
                                  },
                                    activeColor: defaultColor,
                                  )
                                ],
                              ),
                            )
                        ),
                        const SizedBox(height: 10.0,),
                        Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  Image.asset('assets/images/hyperPay.png',height: 45,width: 45,) ,
                                  const Text('HyperPay',style: TextStyle(color: Colors.black),),
                                  Radio(
                                    value: 2 ,
                                    groupValue: RadioButtonCubit.get(context).selectedRadioButtonValue,
                                    onChanged: (int? value)
                                    {
                                      RadioButtonCubit.get(context).changeRadioButtonState(value);
                                    },
                                    activeColor: defaultColor,
                                  )
                                ],
                              ),
                            )
                        ),
                        const SizedBox(height: 10.0,),
                        Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  Image.asset('assets/images/tabbylogo.png',height: 35,width: 50,) ,
                                  const Text('tabby',style: TextStyle(color: Colors.black),),
                                  Radio(
                                    value: 3,
                                     groupValue: RadioButtonCubit.get(context).selectedRadioButtonValue,
                                     onChanged: (int? value)
                                     {
                                         RadioButtonCubit.get(context).changeRadioButtonState(value);
                                    } ,
                                    activeColor: defaultColor,

                                  )
                                ],
                              ),
                            )
                        ),
                        if(RadioButtonCubit.get(context).selectedRadioButtonValue == 2)...[
                          const SizedBox(height: 40.0,),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    Image.asset('assets/images/Mada.png',height: 45,width: 45,) ,
                                    const Text('Mada',style: TextStyle(color: Colors.black),),
                                    Radio(
                                      value: 1 ,
                                      groupValue: RadioButtonCubit.get(context).secondSelectedRadioButtonValue,
                                      onChanged: (int? value)
                                      {
                                        RadioButtonCubit.get(context).changeRadioButtonStateSecondGroup(value);
                                      },
                                      activeColor: defaultColor,
                                    )
                                  ],
                                ),
                              )
                          ),
                          const SizedBox(height: 10.0,),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    Image.asset('assets/images/VisaMaster.png',height: 45,width: 45,) ,
                                    const Text('Visa/Master Card',style: TextStyle(color: Colors.black),),
                                    Radio(
                                      value: 2 ,
                                      groupValue: RadioButtonCubit.get(context).secondSelectedRadioButtonValue,
                                      onChanged: (int? value)
                                      {
                                        RadioButtonCubit.get(context).changeRadioButtonStateSecondGroup(value);
                                      },
                                      activeColor: defaultColor,
                                    )
                                  ],
                                ),
                              )
                          ),
                        ],

                        if(RadioButtonCubit.get(context).selectedRadioButtonValue == 3)
                          ...[
                          const SizedBox(height: 40.0,),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  )
                              ),
                              child: FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:  [
                                      Image.asset('assets/images/tabbylogo.png',height: 40,width: 35,) ,
                                      const Text('Pay in installments without interest',style: TextStyle(color: Colors.black),),
                                      Radio(
                                        value: 0 ,
                                        groupValue: RadioButtonCubit.get(context).thirdSelectedRadioButtonValue,
                                        onChanged: (int? value)
                                        {
                                          RadioButtonCubit.get(context).changeRadioButtonStateThirdGroup(value);
                                        },
                                        activeColor: defaultColor,
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),]
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 30,),
              DefaultButton(
                  width: MediaQuery.of(context).size.width,
                  function: (){},
                  isUpperCase: true,
                  text: 'Payment',
                  background: defaultColor,
                  radius: 10.0,

              )
            ],
          ),
        ),
      ),
    );
  }
}

List<String>? countries=['الكويت','السعوديه','اخرى'];
String? selectedCountry;