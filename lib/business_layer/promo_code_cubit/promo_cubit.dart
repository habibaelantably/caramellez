
import 'package:caramellez/business_layer/promo_code_cubit/promo_code_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromoCodeCubit extends Cubit<PromoCodeStates>
{
  PromoCodeCubit() : super(InitialPromoCodeState());

  static PromoCodeCubit get(context)=>BlocProvider.of(context);

  int promoCodeIndexButton=1;

  void changePromoCodeIndex(index)
  {
    promoCodeIndexButton=index;
    emit(ChangePromoCodeState());
  }



}

