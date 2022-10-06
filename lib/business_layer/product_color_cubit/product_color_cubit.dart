
import 'package:caramellez/business_layer/product_color_cubit/product_color_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductColorCubit extends Cubit<ProductColorStates>
{
  ProductColorCubit() : super(InitialProductColorState());

  static ProductColorCubit get(context)=>BlocProvider.of(context);

  int? productColor;

  void changeProductColor(index)
  {
    productColor=index;
    emit(ChangeProductColorState());
  }


}

