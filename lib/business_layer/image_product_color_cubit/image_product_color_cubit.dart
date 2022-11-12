
import 'package:caramellez/business_layer/image_product_color_cubit/image_product_color_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageProductColorCubit extends Cubit<ImageProductColorStates>
{
  ImageProductColorCubit() : super(ImageInitialProductColorState());

  static ImageProductColorCubit get(context)=>BlocProvider.of(context);

  int? productColor;

  void changeProductColor(index)
  {
    productColor=index;
    emit(ImageChangeProductColorState());
  }
}

