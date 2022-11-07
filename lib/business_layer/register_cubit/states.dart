
class RegisterStates {}

class RegisterInitialState extends RegisterStates{}

class RegisterLoadingState extends RegisterStates{}

class RegisterSuccessState extends RegisterStates{
  String? message;
  RegisterSuccessState(this.message);
}

class RegisterErrorState extends RegisterStates{
   dynamic error;

  RegisterErrorState(this.error);
}