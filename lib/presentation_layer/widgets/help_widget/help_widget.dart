import 'package:flutter/material.dart';

class BuildHelpItem extends StatelessWidget
{
  const BuildHelpItem({Key? key, required this.helpItem,required this.onTap}) : super(key: key);
  final String helpItem;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    // double width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 15,),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children:  [
                Text(helpItem),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
          ),
        ),
        SizedBox(height: height/95,),
        Divider(color: Colors.grey[400],thickness: 2.0,),

      ],
    );
  }
}