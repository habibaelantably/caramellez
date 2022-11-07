//
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class LanguageCubit extends Cubit<PreferencesStates> {
//   LanguageCubit() : super(ThemeInitialState());
//
//   static LanguageCubit get(context) => BlocProvider.of(context);
//
//   bool appLangSwitchIsOn = false;
//
//
//   void changeAppLanguage({bool? appLangFromCache}){
//     if(appLangFromCache!=null){
//       appLangSwitchIsOn = appLangFromCache;
//     }
//     else{
//       appLangSwitchIsOn = !appLangSwitchIsOn;
//       CacheHelper.saveData(key: 'lang', value: appLangSwitchIsOn);
//     }
//     emit(ChangeLanguageState());
//   }
// }
