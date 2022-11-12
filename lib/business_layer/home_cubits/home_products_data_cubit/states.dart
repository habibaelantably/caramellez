

import 'package:caramellez/data_layer/models/product_model/product_model.dart';

class HomeProductsDataStates {}

class HomeProductsDataInitialState extends HomeProductsDataStates{}

class HomeProductsDataLoadingState extends HomeProductsDataStates{}

class HomeProductsDataSuccessState extends HomeProductsDataStates{
  late ProductsModel productsModel ;
  String message ;
   HomeProductsDataSuccessState({required this.message,required this.productsModel});
}

class HomeProductsDataErrorState extends HomeProductsDataStates{
  String error ;
  HomeProductsDataErrorState(this.error);
}