
import 'package:caramellez/business_layer/filters_cubit/filters_cubit.dart';
import 'package:caramellez/business_layer/filters_cubit/filters_states.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildFilterWidget extends StatelessWidget{
  const BuildFilterWidget({
    Key? key,
    required this.filterName,
    required this.isSelected,
    required this.onTab,
  }) : super(key: key);
  final String filterName;
 final bool isSelected;
 final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
        return  InkWell(
          onTap: onTab,
          child: Container(
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width/3.3,
            color: isSelected == true ? defaultColor:Colors.grey[400],
            child:  Center(
                child: Text(filterName,
                  style: TextStyle(
                    fontFamily: 'Din',
                    color: isSelected == true ? Colors.white:Colors.grey[700],
                  ),)),
          ),
        );
      }

}
