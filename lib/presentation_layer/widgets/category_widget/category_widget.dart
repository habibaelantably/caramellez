
import 'package:flutter/material.dart';

// class BuildCategoryItemWidget extends StatelessWidget {
//   const BuildCategoryItemWidget({Key? key,required this.productImage,required this.productName,required this.productPrice,r}) : super(key: key);
// final  String productImage;
// final  String productName;
// final  String productPrice;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration:  BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(20.0)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 0,
//             blurRadius: 3,
//             offset: const Offset(0, 3), // changes position of shadow
//           ),
//         ],
//         color: Colors.red,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             alignment: AlignmentDirectional.bottomEnd,
//             children: [
//               Container(
//                 decoration:  BoxDecoration(
//                   borderRadius: const BorderRadius.only(
//                     topRight: Radius.circular(20.0),
//                     topLeft: Radius.circular(20.0),
//                   ),
//                   image:  DecorationImage(
//                     image: AssetImage(productImage),
//                     fit: BoxFit.cover,
//
//                   ),
//
//                 ),
//                 height: MediaQuery.of(context).size.height/3.5,
//               ),
//               const Padding(
//                 padding: EdgeInsets.all(10.0),
//                 child: Icon(Icons.favorite_border,color: Colors.orange,),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//                 Text(productName,
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                     fontFamily: 'Din',
//                     color:Colors.grey,
//                   ),
//                 ),
//                 Text(productPrice,
//                   style: const TextStyle(
//                     fontFamily: 'Din',
//                     color:Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           )
//
//         ],
//       ),
//
//     );
//   }
// }
class BuildCategoryItemWidget extends StatelessWidget {
  const BuildCategoryItemWidget({Key? key,
    required this.productImage,
    required this.productName,
    required this.productPrice,}) : super(key: key);
final  String productImage;
final  String productName;
final  String productPrice;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(18),
             boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
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
                          child:FittedBox(child: Image.asset('assets/images/onBoarding.png'),fit: BoxFit.cover,)),
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
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Icon(Icons.favorite_border,color: Colors.orange,),
                    )
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );

    // return Container(
    //   decoration:  BoxDecoration(
    //     borderRadius: const BorderRadius.all(Radius.circular(20.0)),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey.withOpacity(0.5),
    //         spreadRadius: 0,
    //         blurRadius: 3,
    //         offset: const Offset(0, 3), // changes position of shadow
    //       ),
    //     ],
    //     color: Colors.white,
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         decoration:  const BoxDecoration(
    //           borderRadius: BorderRadius.only(
    //             topRight: Radius.circular(20.0),
    //             topLeft: Radius.circular(20.0),
    //           ),
    //         ),
    //         child: Image.asset(productImage,fit: BoxFit.cover,),
    //         height: MediaQuery.of(context).size.height/3.5,
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //
    //             Text(productName,
    //               maxLines: 1,
    //               overflow: TextOverflow.ellipsis,
    //               style: const TextStyle(
    //                 fontFamily: 'Din',
    //                 color:Colors.grey,
    //               ),
    //             ),
    //             Text(productPrice,
    //               style: const TextStyle(
    //                 fontFamily: 'Din',
    //                 color:Colors.black,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       // Stack(
    //       //   alignment: AlignmentDirectional.bottomEnd,
    //       //   children: [
    //       //     Container(
    //       //       decoration:  BoxDecoration(
    //       //         borderRadius: const BorderRadius.only(
    //       //           topRight: Radius.circular(20.0),
    //       //           topLeft: Radius.circular(20.0),
    //       //         ),
    //       //         image:  DecorationImage(
    //       //           image: AssetImage(productImage),
    //       //           fit: BoxFit.cover,
    //       //
    //       //         ),
    //       //
    //       //       ),
    //       //       height: MediaQuery.of(context).size.height/3.5,
    //       //     ),
    //       //     const Padding(
    //       //       padding: EdgeInsets.all(10.0),
    //       //       child: Icon(Icons.favorite_border,color: Colors.orange,),
    //       //     ),
    //       //   ],
    //       // ),
    //
    //
    //     ],
    //   ),
    //
    // );
  }

}