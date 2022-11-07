
import 'package:caramellez/business_layer/home_cubits/home_data_cubit/states.dart';
import 'package:caramellez/data_layer/models/home_models/home_model.dart';
import 'package:caramellez/domain_layer/end_points/end_points.dart';
import 'package:caramellez/domain_layer/remote/remote.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeDataCubit extends Cubit<HomeDataStates> {
  HomeDataCubit() : super(HomeDataInitialState());
  static HomeDataCubit get(context)=>BlocProvider.of(context);
  late HomeModel homeModel ;
  homeData() async {
    emit(HomeDataLoadingState());
    DioHelper.getData(
        url: getHomeDataEndPoint,
       token: '',
       query: {}
    ).then((value) {
      if (value.statusCode == 200) {
        homeModel = HomeModel.fromJson(value.data);
        emit(HomeDataSuccessState(message:value.data['message'].toString(),homeModel:homeModel));
      }
    }).catchError((e) {
      if (e is DioError) {
        emit(HomeDataErrorState('${e.response!.data['message']}'));
      } else {
        print(e.toString());
      }
    });
  }
}

