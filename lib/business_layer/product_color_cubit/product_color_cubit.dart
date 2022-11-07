
import 'package:caramellez/business_layer/product_color_cubit/product_color_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseProductColorCubit extends Cubit<ChooseProductColorState>
{
  ChooseProductColorCubit() : super(InitialProductColorState());

  static ChooseProductColorCubit get(context)=>BlocProvider.of(context);

  int productColor=0;

  void changeProductColor(index)
  {
    productColor=index;
    emit(ChangeProductColorState());
  }
}

