
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget
{
   DefaultButton({
     Key? key,
     this.width,
     this.height,
     this.background,
     this.radius,
     required this.isUpperCase,
     required this.text,
     required this.function,

   }) : super(key: key);
  final double? width;
  final double? height;
  final Color? background ;
  final double? radius ;
  final bool isUpperCase ;
  final Function function;
  final String text;

  @override
  Widget build(BuildContext context) {
   return  Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius!),
    color: background ?? defaultColor,
  ),
  child: MaterialButton(
    onPressed: () {
      function();
    },
    child: FittedBox(
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: const TextStyle(
            fontFamily: 'Din',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ),
  ),
);
  }

}





// Widget defaultButton({
//   double? width,
//   double? height,
//   Color background = defaultColor,
//   bool isUpperCase = true,
//   double radius = 0.0,
//   required Function? function,
//   required String text,
//   required BuildContext context,
// }) => Container(
//   height: height,
//   width: width,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(15.0),
//     color: background,
//   ),
//   child: MaterialButton(
//     onPressed: () {
//       function!();
//     },
//     child: Text(
//       isUpperCase ? text.toUpperCase() : text,
//       style: const TextStyle(
//           fontFamily: 'Din',
//           fontSize: 20.0,
//           fontWeight: FontWeight.bold,
//           color: Colors.white),
//     ),
//   ),
// );