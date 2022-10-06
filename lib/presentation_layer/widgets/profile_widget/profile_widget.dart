import 'package:flutter/material.dart';

class BuildProfileItem extends StatelessWidget {
 const BuildProfileItem({Key? key, required this.profileItem}) : super(key: key);
 final String profileItem;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children:  [
              Text(profileItem),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
        ),
         SizedBox(height: height/50,),
        Divider(color: Colors.grey[400],thickness: 2.0,),

      ],
    );
  }

}


class BuildProfileIconItem extends StatelessWidget
{
   BuildProfileIconItem({Key? key,required this.image1,required this.image2,}) : super(key: key);
  String image1;
  String image2;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:   [
           Image.asset(image1,height: 32,width: 32,),
           SizedBox(width: width/5,),
           Image.asset(image2,height: 30,width: 30,),
          ],
        ),
         SizedBox(height: height/50,),
        Divider(color: Colors.grey[400],thickness: 2.0,),

      ],
    );
  }

}