
import 'package:caramellez/business_layer/bottom_nav_cubit/bottom_nav_states.dart';
import 'package:caramellez/presentation_layer/screens/categories_screen/categories_screen.dart';
import 'package:caramellez/presentation_layer/screens/favorites_screen/favorites_screen.dart';
import 'package:caramellez/presentation_layer/screens/help_screen/help-screen.dart';
import 'package:caramellez/presentation_layer/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<BottomNavStates>
{
  BottomNavCubit() : super(InitialBottomNavState());

  static BottomNavCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  List<Widget> screens=
  [
    const HomeScreen(),
    const CategoriesScreen(),
    const FavoriteScreen(),
    const HelpScreen(),
  ];


  void changeBottomNav(int index)
  {
      currentIndex = index;
      emit(ChangeBottomNavState());
  }

}

