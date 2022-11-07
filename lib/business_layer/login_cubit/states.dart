
class LoginStates {}

class LoginInitialState extends LoginStates{}

class LoginLoadingState extends LoginStates{}

class LoginSuccessState extends LoginStates{
  String message ;
  LoginSuccessState(this.message);
}

class LoginErrorState extends LoginStates{
  String error ;
  LoginErrorState(this.error);
}