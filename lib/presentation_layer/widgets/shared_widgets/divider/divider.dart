import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget
{
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
  thickness: 1.0,
  height: 1.0,
  color: Colors.black,
);
  }

}


// Widget myDivider() => const Divider(
//   thickness: 1.0,
//   height: 1.0,
//   color: Colors.black,
//
// );
