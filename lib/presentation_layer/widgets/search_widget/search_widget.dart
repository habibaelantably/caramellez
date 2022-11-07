
import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget
{
  const SearchItem({Key? key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);
  final String productImage;
  final String productName;
  final String productPrice;


  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/6.5,
              width: MediaQuery.of(context).size.width/4,
              decoration:   BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image:  DecorationImage(
                  image: AssetImage(productImage),
                  fit: BoxFit.fill,
                ),),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName, //el text by7salo overflow bardo?? w el spacer hena by5ly el widget t5tfy
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20,),
                Text(productPrice),


              ],
            ),

          ],
        );
      }

}