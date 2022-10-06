import 'package:flutter/material.dart';

class BuildProductItemWidget extends StatelessWidget
{
   BuildProductItemWidget({Key? key,required this.productImage,
     required this.productName,
     required this.productPrice,
     required this.itemType,
     this.productCategory,
   }) : super(key: key);
   String productImage;
   String productName;
   String productPrice;
   int itemType;
   String? productCategory;


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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            //better than
            alignment :/*itemType ==2 ? AlignmentDirectional.topStart :*/ AlignmentDirectional.topStart,
            children: [
              Container(
                decoration:  BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  image:  DecorationImage(
                    image: AssetImage(productImage),
                    fit: BoxFit.fill,
                  ),
                ),
                height: MediaQuery.of(context).size.width/1.64,
                width: MediaQuery.of(context).size.width/2,

              ),
              if(itemType==1)
              const Padding(
                padding: EdgeInsets.all(10.0),
                child:  Icon(Icons.favorite,color: Colors.orange,),
              ),
           //better than
           //   itemType==1 ? SizedBox(height: 20,) : SizedBox(height: 0,),

              if(itemType==2)
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 8.0,right: 8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadiusDirectional.circular(18)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 0.0,bottom: 0.0),
                  child: Text('افضل العروض',style: TextStyle(color: Colors.white),),
                ),
                ),
              ),
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Container(
                //    // width: MediaQuery.of(context).size.width/3.6,
                //     height: MediaQuery.of(context).size.height/30,
                //     decoration: const BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                //       color: Colors.orangeAccent,),
                //     child:  Text(
                //       productCategory!,
                //       style: const TextStyle(
                //         fontFamily: 'Din',
                //         color:Colors.white,
                //       ),
                //
                //     ),
                //
                //   ),
                // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          )
        ],
      ),
    );
  }
}