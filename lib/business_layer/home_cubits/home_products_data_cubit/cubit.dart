
import 'package:caramellez/business_layer/home_cubits/home_products_data_cubit/states.dart';
import 'package:caramellez/data_layer/models/product_model/product_model.dart';
import 'package:caramellez/domain_layer/end_points/end_points.dart';
import 'package:caramellez/domain_layer/remote/remote.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeProductsDataCubit extends Cubit<HomeProductsDataStates>
{
  HomeProductsDataCubit() : super(HomeProductsDataInitialState());
  static HomeProductsDataCubit get(context)=>BlocProvider.of(context);

  ProductsModel? homeProductModel;
  getHomeProductsData(categoryId) async {
    emit(HomeProductsDataLoadingState());
    print(categoryId);
    DioHelper.postData(
        url: getHomeProductsEndPoint,
        data:
        {
          'category_id':categoryId
        }
       ).then((value) {
      homeProductModel = ProductsModel.fromJson(value.data);
      if (value.statusCode == 200 && homeProductModel!.success == true ) {
        emit(HomeProductsDataSuccessState(message:value.data['message'].toString(),productsModel: homeProductModel!));
        print(value.data['message'].toString());
      }else{
        print(value.data['message'].toString());
        emit(HomeProductsDataErrorState(value.data['message'].toString()));
      }
    }).catchError((e) {
      if (e is DioError) {
        print(e.toString());
        print(e.response.toString());
        emit(HomeProductsDataErrorState(e.message));
      } else {
        print(e.toString());
      }
    });
  }
}

