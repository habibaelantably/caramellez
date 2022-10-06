import 'package:caramellez/business_layer/promo_code_cubit/promo_code_states.dart';
import 'package:caramellez/business_layer/promo_code_cubit/promo_cubit.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/widgets/cart_widget/cart_widget.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_button/default_button.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_form_field/default_form_field.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget
{
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     elevation: 0.0,
     backgroundColor: Colors.grey[50],
     leading:   Padding(
       padding: const EdgeInsets.only(left: 8.0),
       child: IconButton(
         icon: const Icon(Icons.arrow_back_ios),
         onPressed:(){
           Navigator.pop(context);
         },
         color: Colors.black,
       ),
     ),
     title: const Text("Cart",
       style: TextStyle(
           fontFamily: 'Din',
           fontSize: 25,
           fontWeight: FontWeight.bold,
           color: Colors.black
       ),

     ),
     centerTitle: true,


   ),
     body: Padding(
       padding: const EdgeInsets.all(14.0),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             SizedBox(
               height: MediaQuery.of(context).size.height/2.6,
               child: ListView.separated(
                   itemBuilder:(context,index)=>  CartItem(
                     productImage: 'assets/images/onBoarding.png',
                     productPrice: '346',
                     productName: 'product Name',
                     productCode: '46',),
                   separatorBuilder:(context,index)=> const SizedBox(height: 10,),
                   itemCount: 7,
                 shrinkWrap: true,

               ),
             ),
             const SizedBox(height: 5,),
             BlocProvider(
               create: (context)=>PromoCodeCubit(),
               child: BlocConsumer<PromoCodeCubit,PromoCodeStates>(
                 builder: (BuildContext context, state) {
                   return Column(
                     children: [
                       const SizedBox(height: 20,),
                       Center(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             width: double.infinity,
                             height: 70,
                             decoration:  BoxDecoration(
                               borderRadius: const BorderRadius.all(Radius.circular(40)),
                               color: (PromoCodeCubit.get(context).promoCodeIndexButton == 1) ? defaultColor : Colors.grey[500],
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children:  [
                                 InkWell(
                                   onTap: (){
                                     PromoCodeCubit.get(context).changePromoCodeIndex(1);
                                   },
                                   child: Container(
                                     width:  MediaQuery.of(context).size.width/2.3,
                                     height: MediaQuery.of(context).size.width/4.8,
                                     decoration: const BoxDecoration(
                                       borderRadius: BorderRadius.all(Radius.circular(40)),
                                     ),
                                     child:  Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Center(child: Text('Promo code',style: TextStyle(color:(PromoCodeCubit.get(context).promoCodeIndexButton == 1) ? Colors.white : Colors.grey[700],fontWeight: FontWeight.bold),)),
                                     ),
                                   ),
                                 ),
                                 InkWell(
                                   onTap: (){
                                     PromoCodeCubit.get(context).changePromoCodeIndex(2);
                                   },
                                   child: Container(
                                     width: MediaQuery.of(context).size.width/3,
                                     height: MediaQuery.of(context).size.width/4.8,
                                     decoration:  BoxDecoration(
                                         borderRadius: const BorderRadius.all(Radius.circular(40)),
                                         color: (PromoCodeCubit.get(context).promoCodeIndexButton == 2) ? defaultColor : Colors.grey[500]
                                     ),
                                     child:   Center(child: Text('apply',style: TextStyle(color: (PromoCodeCubit.get(context).promoCodeIndexButton == 2) ? Colors.white : Colors.grey[700],fontWeight: FontWeight.bold))),
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                       const SizedBox(height: 10,),
                       ConditionalBuilder(
                           condition: PromoCodeCubit.get(context).promoCodeIndexButton == 1,
                           builder: (context)=>Center(
                             child: Column(
                               children: [
                                DefaultFormField(type: TextInputType.text,hintText: 'enter promo code',fillColor: Colors.grey[300],radius: 35,),
                                 const SizedBox(height: 10,),
                                 SizedBox(
                                   width: MediaQuery.of(context).size.width,
                                   height: 60.0,
                                   child: OutlinedButton(
                                     child: const Text('check promo code'),
                                     style: OutlinedButton.styleFrom(
                                       primary: Colors.black,
                                       backgroundColor: Colors.transparent,
                                       side:  const BorderSide(color:defaultColor, width: 1),
                                       shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),

                                     ),
                                     onPressed: () {},
                                   ),
                                 ),
                                 SizedBox(height: MediaQuery.of(context).size.height/40,),

                               ],
                             ),
                           ),
                           fallback:(context)=> const SizedBox(height: 10,)),
                       Column(
                         children: [
                           Row(
                             children: [
                               Text('price',style: TextStyle(color: Colors.grey[600],),),
                               const SizedBox(width: 20,),
                               Text('----------------------',style: TextStyle(color: Colors.grey[600])),
                               const SizedBox(width: 20,),
                               Text('441',style: TextStyle(color: Colors.grey[600])),
                               Text('د.ك',style: TextStyle(color: Colors.grey[600])),
                             ],
                           ),
                           Row(
                             children: [
                               Text('charge price',style: TextStyle(color: Colors.grey[600],),),
                               const SizedBox(width: 20,),
                               Text('----------------------',style: TextStyle(color: Colors.grey[600])),
                               const SizedBox(width: 20,),
                               Text('441',style: TextStyle(color: Colors.grey[600])),
                               Text('د.ك',style: TextStyle(color: Colors.grey[600])),
                             ],
                           ),
                           Row(
                             children: [
                               Text('Total price',style: TextStyle(color: Colors.grey[600],),),
                               const SizedBox(width: 20,),
                               Text('----------------------',style: TextStyle(color: Colors.grey[600])),
                               const SizedBox(width: 20,),
                               const Text('441',style: TextStyle(color: defaultColor)),
                               const Text('د.ك',style: TextStyle(color: defaultColor)),
                             ],
                           ),
                           Row(
                             children: [
                               Text('Discounts',style: TextStyle(color: Colors.grey[600],),),
                               const SizedBox(width: 20,),
                               Text('-----------------------',style: TextStyle(color: Colors.grey[600])),
                               const SizedBox(width: 20,),
                               const Text('441',style: TextStyle(color: defaultColor)),
                               const Text('د.ك',style: TextStyle(color: defaultColor)),
                             ],
                           ),
                         ],
                       ),
                     ],
                   );
                 },
                 listener: (BuildContext context, Object? state) {  },

               ),
             ),
             const SizedBox(height: 30,),
             Center(
                 child: DefaultButton(
                   text: 'complete purchasing',
                   function: (){},
                   isUpperCase: false,
                   radius: 30.0,
                   height: 60,
                   width: MediaQuery.of(context).size.width,))
           ],
         ),
       ),
     ),

   );
  }

}

// Padding(
// padding: const EdgeInsets.all(14.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Row(
// children: [
// Container(
// height: 130,
// width: 100,
// decoration:  const BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(20)),
// image:  DecorationImage(
// image: AssetImage('assets/images/onBoarding.png'),
// fit: BoxFit.fill,
// ),),
// ),
// const SizedBox(width: 10,),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// const Text('product name ', //el text by7salo overflow bardo?? w el spacer hena by5ly el widget t5tfy
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// ),
// Container(
// decoration: const BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(10)),
// color: Colors.grey,
// ),
// child: const Padding(
// padding: EdgeInsets.all(5.0),
// child: Center(child: Text('46')),
// ),
// ),
//
// ],
// ),
// const SizedBox(height: 10,),
// const Text('340'),
// const SizedBox(height: 10,),
// Row(
// children: [
// Row(
// children: [
// Container(
// height: 30,
// width: 30,
// decoration: BoxDecoration(
// borderRadius: const BorderRadius.all(Radius.circular(10)),
// border:Border.all(
// color: Colors.black,
// width: 1,
// ),
// color: Colors.white,
// ),
// child: const Center(child: Text('+')),
// ),
// const Padding(
// padding: EdgeInsets.symmetric(horizontal: 4.0),
// child: Text('1'),
// ),
// Container(
// height: 30,
// width: 30,
// decoration: BoxDecoration(
// borderRadius: const BorderRadius.all(Radius.circular(10)),
// border:Border.all(
// color: Colors.black,
// width: 1,
// ),
// color: Colors.white,
// ),
// child: const Center(child: Text('-',style: TextStyle(fontSize: 22),)),
// ),
// ],
// ),
// const SizedBox(width: 90,),
// const Icon(Icons.delete_forever, color: Colors.red),
// ],
// )
// ],
// )
//
// ],
// )
// ],
// ),
// ),