import 'package:caramellez/business_layer/product_size_cubit/product_size_cubit.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';

class ProductSizeItem extends StatelessWidget
{
  const ProductSizeItem({Key? key,required this.size,required this.index}) : super(key: key);
  final String size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            InkWell(
              onTap: (){
                ChooseProductSizeCubit.get(context).changeProductSize(index);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  border:Border.all(
                    color: ChooseProductSizeCubit.get(context).productColor==index? defaultColor:Colors.grey[400]!,
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
                    child:  FittedBox(child: Center(child: Text(size,style: const TextStyle(fontSize: 10),))),
                  ),
                ),
              ),
            ),
          ],
        );

  }

}