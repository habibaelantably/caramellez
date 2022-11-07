import 'package:caramellez/business_layer/register_cubit/states.dart';
import 'package:caramellez/data_layer/local/cach_helper/cache_helper.dart';
import 'package:caramellez/domain_layer/end_points/end_points.dart';
import 'package:caramellez/domain_layer/remote/remote.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterCubit extends Cubit<RegisterStates>
{
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context)=>BlocProvider.of(context);



  register({
  int? id,
  String? name,
  String? mobile,
  String? email,
  String? token,
  String? password,
  String? confirmPassword
  })async{
    emit(RegisterLoadingState());
    DioHelper.postData(
        url: signUpEndPoint,
        data: {
          'name':name,
          'mobile':mobile,
          'email':email,
          'password':password,
          'password_confirmation':confirmPassword
    }).then((value){
      // registerModel=UserAuthModel.fromJson(value.data);
      if(value.data['success'] == true ){
      print(value.data['message']);
      // print(registerModel!.message);
      CacheHelper.saveDataSharedPreference(key: 'token', value: value.data['data']['token'].toString());
      emit(RegisterSuccessState(value.data['message'].toString()));
      }else{
        emit(RegisterErrorState(value.data['message'].toString()));
      }
    }).catchError((error){
      if (error is DioError)
      {
        print(error.error);
        print(error.response);
        emit(RegisterErrorState('${error.response!.data['message']}'));
        print(error.toString());
      }else{
      emit(RegisterErrorState('${error.response!.data['message']}'));}
      print(error.toString());
    });
  }
}

