import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget
{
   DefaultFormField({Key? key,
     //required this.controller,
     required this.type,
     this.prefix,
     this.suffix,
     this.hintText,
     this.fillColor,
     this.radius,
   }) : super(key: key);
  //TextEditingController controller;
  TextInputType type;
  IconData ? prefix;
  IconData ? suffix;
  String ? hintText;
  Color? fillColor;
  double? radius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

    //controller: controller,

     keyboardType: type,

    decoration: InputDecoration(

      border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(radius!),

            borderSide: BorderSide.none

      ),

      filled: true,

      fillColor: fillColor,

      hintText: hintText,

      hintStyle:   const TextStyle(

         fontFamily: 'Din',

         color: Colors.grey,

      ),

      prefixIcon: Icon(prefix),

      suffixIcon: Icon(suffix),

      //hintTextDirection: TextDirection.rtl,


   ),



);
   }

}



// deafultFormField({
//    //required TextEditingController controller,
//   required TextInputType type,
//   IconData ? prefix,
//   IconData ? suffix,
//   String ? hintText,
// })=>TextFormField(
//
//   //controller: controller,
//
//   keyboardType: type,
//
//   decoration: InputDecoration(
//
//     border: OutlineInputBorder(
//
//         borderRadius: BorderRadius.circular(15.0),
//
//         borderSide: BorderSide.none
//
//     ),
//
//     filled: true,
//
//     fillColor: Colors.grey[200],
//
//     hintText: hintText,
//
//     hintStyle:  const TextStyle(
//
//       fontFamily: 'Din',
//
//       color: Colors.grey,
//
//     ),
//
//     prefixIcon: Icon(prefix),
//
//     suffixIcon: Icon(suffix),
//
//     hintTextDirection: TextDirection.rtl,
//
//
//   ),
//
//
//
// );