
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_states.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super(InitialCounterState());

  static CounterCubit get(context)=>BlocProvider.of(context);

  int counter=1;

  void addCounter()
  {
    counter++;
    emit(PlusCounterState(counter));
  }

  void minusCounter()
  {
    if(counter != 1) {
      counter--;
      emit(MinusCounterState(counter));
    }


  }

}

