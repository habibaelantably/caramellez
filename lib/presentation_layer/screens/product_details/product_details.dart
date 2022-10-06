import 'package:caramellez/business_layer/counter_cubit/counter_cubit.dart';
import 'package:caramellez/business_layer/counter_cubit/counter_states.dart';
import 'package:caramellez/business_layer/product_color_cubit/product_color_cubit.dart';
import 'package:caramellez/business_layer/product_color_cubit/product_color_state.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/widgets/product_color_widget/product_color_widget.dart';
import 'package:caramellez/presentation_layer/widgets/product_size_widget/product_size.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_button/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProductDetails extends StatelessWidget
{
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
   return Scaffold(
     backgroundColor: Colors.grey[200],
     appBar: AppBar(
       elevation: 0.0,
       backgroundColor: Colors.grey[50],
       leading:  Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image.asset('assets/images/fav icon.png'),
           ),
         ],
       ),
       actions: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10.0),
           child: Image.asset('assets/images/bag icon.png',height: height/16,width: width/19,),
         ),
       ],

     ),
     body: Column(
       children: [
         Expanded(
           child: SingleChildScrollView(
             child: Padding(
               padding: const EdgeInsets.only(right: 25.0,left: 25.0,top: 10.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     height: 450,
                     width: double.infinity,
                     decoration: const BoxDecoration(
                       image: DecorationImage(image: AssetImage('assets/images/onBoarding.png'),fit: BoxFit.cover),
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                     ),
                     child: BlocProvider(
                       create: (BuildContext context) => ProductColorCubit(),
                       child: BlocConsumer<ProductColorCubit,ProductColorStates>(
                         listener: (BuildContext context, state) {  },
                         builder: (BuildContext context, Object? state) {
                           return Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 InkWell(
                                   onTap: (){
                                     ProductColorCubit.get(context).changeProductColor(1);
                                   },
                                   child: Container(
                                     height: 70,
                                     width: 70,
                                     decoration:  BoxDecoration(
                                         image: const DecorationImage(image: AssetImage('assets/images/onBoarding.png'),fit: BoxFit.cover),
                                         borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                         border: Border.all(
                                           color: ProductColorCubit.get(context).productColor==1? defaultColor : Colors.grey,
                                           width: 1,
                                         )
                                     ),
                                   ),
                                 ),
                                 const SizedBox(height: 10,),
                                 InkWell(
                                   onTap: (){
                                     ProductColorCubit.get(context).changeProductColor(2);
                                   },
                                   child: Container(
                                     height: 70,
                                     width: 70,
                                     decoration:  BoxDecoration(
                                         image: const DecorationImage(image: AssetImage('assets/images/onBoarding.png'),fit: BoxFit.cover),
                                         borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                         border: Border.all(
                                           color: ProductColorCubit.get(context).productColor==2? defaultColor : Colors.grey,
                                           width: 1,
                                         )
                                     ),
                                   ),
                                 ),
                                 const SizedBox(height: 10,),
                                 InkWell(
                                   onTap: (){
                                     ProductColorCubit.get(context).changeProductColor(3);
                                   },
                                   child: Container(
                                     height: 70,
                                     width: 70,
                                     decoration:  BoxDecoration(
                                         image: const DecorationImage(image: AssetImage('assets/images/onBoarding.png'),fit: BoxFit.cover),
                                         borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                         border: Border.all(
                                           color: ProductColorCubit.get(context).productColor==3? defaultColor : Colors.grey,
                                           width: 1,
                                         )
                                     ),
                                   ),
                                 ),

                               ],
                             ),
                           );
                         },
                       ),
                     ),
                   ),
                   const SizedBox(height: 10.0,),
                   const Text('product Name'),
                   const SizedBox(height: 10,),
                   Row(
                     children: const [
                       Text('price:',style: TextStyle(color: Colors.black)),
                       Text(' 320',style: TextStyle(color: Colors.grey),),
                     ],
                   ),
                   const SizedBox(height: 10,),
                   Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text('Colors'),
                           SizedBox(
                             height: height/20,
                             width: width/4,
                             child: ListView.separated(
                                 itemBuilder: (context,index)=>const ProductColorItem(productColor: Colors.purple),
                                 separatorBuilder: (context,index)=>const SizedBox(width: 10,),
                                 itemCount: 4,
                             shrinkWrap: true,
                               scrollDirection: Axis.horizontal,
                             ),
                           ),
                         ],
                       ),
                        const Spacer(),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text('sizes'),
                           SizedBox(
                             height: height/20,
                             width: width/4,
                             child: ListView.separated(
                               itemBuilder: (context,index)=>const ProductSizeItem(size: '46'),
                               separatorBuilder: (context,index)=>const SizedBox(width: 10,),
                               itemCount: 4,
                               shrinkWrap: true,
                               scrollDirection: Axis.horizontal,
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),

                  // Html(data: """ <b>Bold</b> """,)
                   const SizedBox(height: 15,),
                   const Text(' design :',style: TextStyle(fontWeight: FontWeight.bold),),
                   Column(
                     children: const [
                       Text(' design design design design design design design design',
                         ),
                     ],
                   ),

                   const SizedBox(height: 15,),

                   const Text('description: design design design design design design',style: TextStyle(fontWeight: FontWeight.bold),),

                   const SizedBox(height: 15,),

                   const Text('guid how to takecare of your dress: design design design design design design',style: TextStyle(fontWeight: FontWeight.bold),),

                   const SizedBox(height: 15,),

                   const Text('design: design design design design design design',style: TextStyle(fontWeight: FontWeight.bold),),


                 ],
               ),
             ),
           ),
         ),
         BlocProvider(
           create: (BuildContext context) => CounterCubit(),
           child: BlocConsumer<CounterCubit,CounterStates>(
             builder: (BuildContext context, state) {
               return Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: SizedBox(
                   height: 90,
                   width: double.infinity,
                   child: Row(
                     children: [
                       DefaultButton(
                         isUpperCase: false,
                         text: 'Add To Cart' ,
                         function: (){},
                         background: defaultColor,
                         width: 200,
                         height: 50,

                       ),
                       const Spacer(),
                       Row(
                         children: [
                           InkWell(
                             onTap: (){
                               CounterCubit.get(context).addCounter();
                             },
                             child: Container(
                               height: 30,
                               width: 30,
                               decoration: BoxDecoration(
                                 borderRadius: const BorderRadius.all(Radius.circular(10)),
                                 border:Border.all(
                                   color: Colors.black,
                                   width: 1,
                                 ),
                                 color: Colors.white,
                               ),
                               child: const Center(child: Text('+')),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 4.0),
                             child: Text(CounterCubit.get(context).counter.toString()),
                           ),
                           InkWell(
                             onTap: (){
                               CounterCubit.get(context).minusCounter();
                             },
                             child: Container(
                               height: 30,
                               width: 30,
                               decoration: BoxDecoration(
                                 borderRadius: const BorderRadius.all(Radius.circular(10)),
                                 border:Border.all(
                                   color: Colors.black,
                                   width: 1,
                                 ),
                                 color: Colors.white,
                               ),
                               child: const Center(child: Text('-',style: TextStyle(fontSize: 22),)),
                             ),
                           ),
                         ],
                       ),

                     ],
                   ),
                 ),
               );
             },
             listener: (BuildContext context, Object? state) {  },

           ),
         )
       ],
     ),
   );
  }

}