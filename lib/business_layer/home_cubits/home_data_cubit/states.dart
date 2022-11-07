
import 'package:caramellez/data_layer/models/home_models/home_model.dart';

class HomeDataStates {}

class HomeDataInitialState extends HomeDataStates{}

class HomeDataLoadingState extends HomeDataStates{}

class HomeDataSuccessState extends HomeDataStates{
   late HomeModel homeModel ;
  String message ;
  HomeDataSuccessState({required this.message,required this.homeModel});
}

class HomeDataErrorState extends HomeDataStates{
  String error ;
  HomeDataErrorState(this.error);
}