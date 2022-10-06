
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';

class ProductColorItem extends StatelessWidget
{
   const ProductColorItem({Key? key,required this.productColor}) : super(key: key);
   final Color productColor;

  @override
  Widget build(BuildContext context) {
   return  Row(
     children: [
       Container(
         decoration: BoxDecoration(
           borderRadius: const BorderRadius.all(Radius.circular(30)),
           border:Border.all(
             color: defaultColor,
             width: 2,
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
     ],
   );
  }

}