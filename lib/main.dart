import 'package:caramellez/bloc_observer.dart';
import 'package:caramellez/data_layer/local/cach_helper/cache_helper.dart';
import 'package:caramellez/domain_layer/remote/remote.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/retry.dart';




void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  // RetryClient(http.Client()).read(Uri.http("1665391957.jpeg", ''));

  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Init',
      theme: themeData,
      home: const OnBoardingScreen(),

    );
  }
}



