import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField({
    Key? key,
    required this.controller,
    required this.type,
    this.prefix,
    this.suffix,
    this.hintText,
    this.fillColor,
    this.radius,
    this.width,
    this.height,
    this.hintColor,
    this.validator,
    this.borderSide,
    required this.havePrefixIcon,
  }) : super(key: key);
  final TextEditingController controller;
  final TextInputType type;
  final IconData? prefix;
  final IconData? suffix;
  final String? hintText;
  final Color? fillColor;
  final double? radius;
  final double? width;
  final double? height;
  final Color? hintColor;
  final Function? validator;
  final BorderSide? borderSide;
  final bool havePrefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      // height: height,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0.0,left: 5.0,right: 5.0,top: 0.0),
        child: TextFormField(
          controller: controller,
          cursorColor: defaultColor,
          keyboardType: type,
          decoration: InputDecoration(
            contentPadding:const EdgeInsets.only(left: 8.0,top: 20.0) ,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius!),
              borderSide: borderSide!,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius!),
              borderSide: borderSide!,
            ),
            filled: true,
            fillColor: fillColor,
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Din',
              color: hintColor,
              fontSize: 12,
              fontWeight: FontWeight.w400
            ),

            prefixIcon: havePrefixIcon==true?Icon(
              prefix,
            ):null,

            isDense: true,
            focusColor: defaultColor,

            //hintTextDirection: TextDirection.rtl,
          ),
          validator: (String? value) {
            return validator!(value);
          },
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 12
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
