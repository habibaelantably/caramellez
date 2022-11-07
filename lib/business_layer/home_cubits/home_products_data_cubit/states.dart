

class HomeProductsDataStates {}

class HomeProductsDataInitialState extends HomeProductsDataStates{}

class HomeProductsDataLoadingState extends HomeProductsDataStates{}

class HomeProductsDataSuccessState extends HomeProductsDataStates{
  // late HomeModel homeModel ;
  String message ;
   HomeProductsDataSuccessState({required this.message,/*required this.homeModel*/});
}

class HomeProductsDataErrorState extends HomeProductsDataStates{
  String error ;
  HomeProductsDataErrorState(this.error);
}