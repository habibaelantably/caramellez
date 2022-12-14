import 'package:flutter/material.dart';

class BuildProductItemWidget extends StatelessWidget
{
    const BuildProductItemWidget({Key? key,
     required this.productImage,
     required this.productName,
     required this.productPrice,
     required this.itemType,
     required this.productCategory,
   }) : super(key: key);
   final String productImage;
   final String productName;
   final String productPrice;
   final int itemType;
   final String productCategory;


   @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width/2,
                child: ClipRRect(borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(18),
                    topLeft:Radius.circular(18)),
                    child:FittedBox(child:Image(image: NetworkImage(productImage),),fit: BoxFit.cover,)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Text(productName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontFamily: 'Din',
                        color:Colors.grey,
                      ),
                    ),
                    Text(productPrice,
                      style: const TextStyle(
                        fontFamily: 'Din',
                        color:Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if(itemType==1)...[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
                  child: Container(
                    decoration:  const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.orange,
                    ),
                    child: Text(productCategory,style: const TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),
          ]
          else if(itemType==2)...[
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/4.7,
                ),

                const Padding(
                    padding: EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Icon(Icons.favorite_border,color: Colors.orange,)
                )
              ],
            ),
          ]else if(itemType==3)...[
            Column(
              children: const [
                Padding(
                    padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
                    child: Icon(Icons.favorite,color: Colors.orange,)
                )
              ],
            ),
          ]
        ],
      )


    );
  }
}