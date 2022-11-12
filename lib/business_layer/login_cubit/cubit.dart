

import 'package:caramellez/business_layer/login_cubit/states.dart';
import 'package:caramellez/data_layer/local/cach_helper/cache_helper.dart';
import 'package:caramellez/domain_layer/end_points/end_points.dart';
import 'package:caramellez/domain_layer/remote/remote.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context)=>BlocProvider.of(context);


  login({
    required String mobile,
    required String password,
  }) async {
    emit(LoginLoadingState());
    DioHelper.postData(
        url: loginEndPoint,
        data: {
          "mobile": mobile.toString(),
          "password": password.toString(),
         // "device_token": value.toString(),
         // "device_id": Platform.isIOS ? '${iosInfo!.identifierForVendor}' : '${androidInfo!.id}',
        }).then((value) {
        if(value.data['success'] == true && value.statusCode==200){
        print(value.data['message']);
        CacheHelper.saveDataSharedPreference(key: 'token', value: value.data['data']['token'].toString());
        emit(LoginSuccessState(value.data['message'].toString()));
        }else{
          emit(LoginErrorState(value.data['message'].toString()));
        }
    }).catchError((e) {
      if (e is DioError) {
        emit(LoginErrorState('${e.response!.data['message']}'));
        print('${e.response!.data['message']}');
      } else {
        print(e.toString());
      }
    });
  }
}

