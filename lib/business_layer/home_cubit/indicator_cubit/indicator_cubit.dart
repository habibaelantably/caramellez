

import 'package:flutter_bloc/flutter_bloc.dart';

import 'indicator_states.dart';

class IndicatorCubit extends Cubit<IndicatorStates>
{
  IndicatorCubit() : super(InitialIndicatorState());

  static IndicatorCubit get(context)=>BlocProvider.of(context);



  int indicatorIndex=0;
  void changeIndicator(int index)
  {
    indicatorIndex = index;
    emit(ChangeIndicatorState());
  }


}

