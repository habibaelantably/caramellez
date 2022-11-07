
import 'package:caramellez/business_layer/home_cubits/home_products_data_cubit/states.dart';
import 'package:caramellez/domain_layer/end_points/end_points.dart';
import 'package:caramellez/domain_layer/remote/remote.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeProductsDataCubit extends Cubit<HomeProductsDataStates> {
  HomeProductsDataCubit() : super(HomeProductsDataInitialState());
  static HomeProductsDataCubit get(context)=>BlocProvider.of(context);

  homeProductsData(categoryId) async {
    emit(HomeProductsDataLoadingState());
    DioHelper.getData(
        url: getHomeProductsEndPoint,
        token: '',
        query: {
          'categories_id':'$categoryId'
        }
       ).then((value) {
      if (value.statusCode == 200) {
        emit(HomeProductsDataSuccessState(message:value.data['message'].toString(),));
      }
    }).catchError((e) {
      if (e is DioError) {
        emit(HomeProductsDataErrorState('${e.response!.data['message']}'));
      } else {
        print(e.toString());
      }
    });
  }
}

