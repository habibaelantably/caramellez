
import 'package:caramellez/business_layer/filters_cubit/filters_cubit.dart';
import 'package:caramellez/business_layer/filters_cubit/filters_states.dart';
import 'package:caramellez/presentation_layer/widgets/home_widgets/filter_widget/filter_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FiltersList extends StatelessWidget
{
  const FiltersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context)=>FiltersCubit(),
      child: BlocConsumer<FiltersCubit,FiltersStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          return SizedBox(
            height: MediaQuery.of(context).size.height/14 ,
            child: ListView.separated(
                itemBuilder: (context,index)=> BuildFilterWidget(filterName: 'best sales',isSelected: true,onTab: (){},),
                separatorBuilder: (context,index)=>SizedBox(width: MediaQuery.of(context).size.width/100,),
                scrollDirection: Axis.horizontal,
                itemCount: 4),
          );
        },
      ),
    );
  }

}