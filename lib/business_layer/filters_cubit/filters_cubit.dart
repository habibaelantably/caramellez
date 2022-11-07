
import 'package:caramellez/business_layer/filters_cubit/filters_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FiltersCubit extends Cubit<FiltersStates>
{
  FiltersCubit() : super(InitialFilterState());

  static FiltersCubit get(context)=>BlocProvider.of(context);

  int filterColor=0;

  void changeFilterColor(index)
  {
    filterColor=index;
    emit(ChangeFilterState(index));
  }
}

