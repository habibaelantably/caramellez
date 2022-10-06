
import 'package:caramellez/business_layer/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:caramellez/business_layer/bottom_nav_cubit/bottom_nav_states.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Layout extends StatelessWidget
{
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=> BottomNavCubit(),
      child: BlocConsumer<BottomNavCubit,BottomNavStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          return Scaffold(
            bottomNavigationBar: buildBottomNavBar(context),
            body: BottomNavCubit.get(context).screens[BottomNavCubit.get(context).currentIndex],
          );
        },

      ),
    );
  }

}

Widget buildBottomNavBar(context)=>BottomNavigationBar(
  currentIndex: BottomNavCubit
      .get(context)
      .currentIndex,
  onTap: (index) {
    BottomNavCubit.get(context).changeBottomNav(index);
  },
  items:
  [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home, size: 26), label: '',),
    BottomNavigationBarItem(icon: SizedBox(
      width: 40,
      height: 50,
      child: Image.asset(
          'assets/images/Featured icon.png',
          height: 25,
          width: 25,
          color: BottomNavCubit
              .get(context)
              .currentIndex == 1 ? defaultColor : Colors.grey[700]
      ),
    ), label: ''),
    const BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border_outlined, size: 26,), label: ''),
    const BottomNavigationBarItem(
        icon: Icon(Icons.help_outline, size: 26), label: ''),
  ],
);

