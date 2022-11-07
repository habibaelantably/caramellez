


import 'package:caramellez/business_layer/product_color_cubit/product_color_cubit.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';

class ProductColorItem extends StatelessWidget
{
   const ProductColorItem({Key? key,required this.productColor,required this.index}) : super(key: key);
   final Color productColor;
   final int index;

  @override
  Widget build(BuildContext context) {
       return  Row(
         children: [
           InkWell(
             onTap: (){
               ChooseProductColorCubit.get(context).changeProductColor(index);
             },
             child: Container(
               decoration: BoxDecoration(
                 borderRadius:  const BorderRadius.all(Radius.circular(30)),
                 border:Border.all(
                   color: ChooseProductColorCubit.get(context).productColor==index ? defaultColor : Colors.grey[400]!,
                   width: 1,
                 ),
               ),
               child: Padding(
                 padding:  const EdgeInsets.all(2.0),
                 child: Container(
                   height: 20,
                   width: 20,
                   decoration: BoxDecoration(
                     color:productColor,
                     borderRadius: const BorderRadius.all(Radius.circular(30)),
                   ),
                 ),
               ),
             ),
           ),
         ],
       );
  }

}