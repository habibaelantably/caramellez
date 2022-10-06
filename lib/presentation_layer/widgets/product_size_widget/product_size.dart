
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';

class ProductSizeItem extends StatelessWidget
{
  const ProductSizeItem({Key? key,required this.size}) : super(key: key);
  final String size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border:Border.all(
              color: defaultColor,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              height: 20,
              width: 20,
              decoration:   BoxDecoration(
                color:Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                border:Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child:  Center(child: Text(size,style: const TextStyle(fontSize: 10),)),
            ),
          ),
        ),
      ],
    );
  }

}