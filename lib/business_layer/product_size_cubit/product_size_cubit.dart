import 'package:caramellez/business_layer/product_size_cubit/product_size_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseProductSizeCubit extends Cubit<ChooseProductSizeState>
{
  ChooseProductSizeCubit() : super(InitialProductSizeState());

  static ChooseProductSizeCubit get(context)=>BlocProvider.of(context);

  int? productColor;

  void changeProductSize(index)
  {
    productColor=index;
    emit(ChangeProductSizeStat());
  }
}

