
import 'package:flutter/material.dart';

class BuildFilterWidget extends StatelessWidget{
  const BuildFilterWidget({Key? key,required this.filterName}) : super(key: key);final String filterName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/14,
      width: MediaQuery.of(context).size.width/3.3,
      color: Colors.grey[400],
      child:  Center(
          child: Text(filterName,
            style: TextStyle(
              fontFamily: 'Din',
              color:Colors.grey[700],
            ),)),
    );
  }

}
