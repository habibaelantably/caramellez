import 'dart:ui';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/divider/divider.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget
{
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height/2.3,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text('اللغه',
                    style: TextStyle(
                        fontFamily: 'Din',
                        fontSize: 20.0,
                        color: Colors.grey
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/3),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.clear, color: Colors.grey,),
                  ),

                ],
              ),
              const SizedBox(height: 10.0,),
              MyDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Text('العربية',
                      style: TextStyle(
                          fontFamily: 'Din',
                          fontSize: 20.0,
                          color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  MyDivider()
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text('English',
                      style: TextStyle(
                          fontFamily: 'Din',
                          fontSize: 20.0,
                          color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  MyDivider()
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }

}


// Widget languageBottomSheet(context)=> BackdropFilter(
//   filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//   child: Container(
//     color: Colors.white,
//     height: MediaQuery.of(context).size.height/2.3,
//     child: Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children:  [
//               const Text('اللغه',
//                 style: TextStyle(
//                     fontFamily: 'Din',
//                     fontSize: 20.0,
//                     color: Colors.grey
//                 ),
//               ),
//               SizedBox(width: MediaQuery.of(context).size.width/3),
//               InkWell(
//                 onTap: (){
//                   Navigator.pop(context);
//                 },
//                 child: const Icon(
//                   Icons.clear, color: Colors.grey,),
//               ),
//
//             ],
//           ),
//           const SizedBox(height: 10.0,),
//           myDivider(),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               const SizedBox(height: 10.0,),
//               const Padding(
//                 padding: EdgeInsets.only(right: 20.0),
//                 child: Text('العربية',
//                   style: TextStyle(
//                       fontFamily: 'Din',
//                       fontSize: 20.0,
//                       color: Colors.black
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20.0,),
//               myDivider()
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               const SizedBox(height: 10.0,),
//               const Padding(
//                 padding: EdgeInsets.only(right: 15.0),
//                 child: Text('English',
//                   style: TextStyle(
//                       fontFamily: 'Din',
//                       fontSize: 20.0,
//                       color: Colors.black
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20.0,),
//               myDivider()
//             ],
//           ),
//         ],
//       ),
//     ),
//
//   ),
// );





