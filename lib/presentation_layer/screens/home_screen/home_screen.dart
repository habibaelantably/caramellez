
import 'package:caramellez/business_layer/filters_cubit/filters_cubit.dart';
import 'package:caramellez/business_layer/filters_cubit/filters_states.dart';
import 'package:caramellez/business_layer/home_cubits/home_data_cubit/cubit.dart';
import 'package:caramellez/business_layer/home_cubits/home_data_cubit/states.dart';
import 'package:caramellez/business_layer/home_cubits/home_products_data_cubit/cubit.dart';
import 'package:caramellez/business_layer/home_cubits/home_products_data_cubit/states.dart';
import 'package:caramellez/business_layer/home_cubits/indicator_cubit/indicator_cubit.dart';
import 'package:caramellez/business_layer/home_cubits/indicator_cubit/indicator_states.dart';
import 'package:caramellez/data_layer/local/cach_helper/cache_helper.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/cart_screen/cart_screen.dart';
import 'package:caramellez/presentation_layer/screens/login_first/login_first_screen.dart';
import 'package:caramellez/presentation_layer/screens/product_details/product_details.dart';
import 'package:caramellez/presentation_layer/screens/profile_screeen/profile_screen.dart';
import 'package:caramellez/presentation_layer/widgets/home_widgets/filter_widget/filter_widget.dart';
import 'package:caramellez/presentation_layer/widgets/product_widget/product_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>IndicatorCubit()),
        BlocProvider(create: (context)=>FiltersCubit()),
        BlocProvider(create: (context)=>HomeDataCubit()..homeData()),
        BlocProvider(create: (context)=>HomeProductsDataCubit()..homeProductsData(1)),
      ],
      child:  BlocConsumer<FiltersCubit,FiltersStates>(
        listener: (context,state){
          if(state is ChangeFilterState){
            HomeProductsDataCubit.get(context).homeProductsData(state.index);
          }
        },
        builder: (context,state) {
          return BlocConsumer<IndicatorCubit,IndicatorStates>(
            listener: (BuildContext context, state) {  },
            builder: (BuildContext context, Object? state) {
              return Scaffold(
                appBar: AppBar(
                  elevation: 0.0,
                  backgroundColor: Colors.grey[50],
                  leading:   Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Image.asset('assets/images/whatsapp.png'),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                        height: height/14,
                        width: width/1,
                        child: Image.asset('assets/images/logo.png',fit: BoxFit.cover,)),
                  ),
                  centerTitle: true,
                  actions: [
                    IconButton(icon:const Icon(Icons.person_outline),
                      iconSize: width/13,color: Colors.black,
                      onPressed: (){
                      if(CacheHelper.getDataFromSharedPreference(key: 'token') !=null){
                      navigateTo(context, const ProfileScreen());}
                      else{
                        navigateTo(context, const LoginFirstScreen());
                      }
                      },),
                    SizedBox(width: width/25,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: InkWell(
                          onTap: (){
                            navigateTo(context, CartScreen());
                          },
                          child: Image.asset('assets/images/cart.png',height: height/13,width: width/13,)),
                    ),
                  ],

                ),
                body: BlocBuilder<HomeDataCubit,HomeDataStates>(
                  builder: (context,state){
                    if(state is HomeDataLoadingState){
                      return const Center(child: CircularProgressIndicator());
                    }
                    if(state is HomeDataErrorState){
                      return Center(child: Text(state.error),);
                    }
                    if(state is HomeDataSuccessState){
                      return BlocBuilder<HomeProductsDataCubit,HomeProductsDataStates>(
                        builder: (context,state){
                          if(state is HomeProductsDataLoadingState){
                            return const Center(child: CircularProgressIndicator());
                          }
                          if(state is HomeProductsDataErrorState){
                            return Center(child: Text(state.error),);
                          }
                          if(state is HomeProductsDataSuccessState){
                            return SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children:[
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/10,
                                      child:  ListView.separated(
                                        itemBuilder: (context,index)=> BuildFilterWidget(
                                            filterName: HomeDataCubit.get(context).homeModel.data.category[index].name.toString(),
                                            isSelected: FiltersCubit.get(context).filterColor == index ? true :false,
                                            onTab: (){
                                              FiltersCubit.get(context).changeFilterColor(index);
                                            }
                                        ),
                                        separatorBuilder: (context,index)=>SizedBox(width: MediaQuery.of(context).size.width/100,),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: HomeDataCubit.get(context).homeModel.data.category.length,
                                      ),
                                    ),
                                    CarouselSlider(
                                      items:image,
                                      options: CarouselOptions(
                                          height: height/3.5,

                                          initialPage: 0,

                                          viewportFraction: 1.0,

                                          enableInfiniteScroll: true,

                                          reverse: false,

                                          autoPlay: true,

                                          autoPlayAnimationDuration: const Duration(seconds: 1),

                                          autoPlayInterval: const Duration(seconds: 3),

                                          autoPlayCurve: Curves.fastOutSlowIn,

                                          scrollDirection: Axis.horizontal,

                                          onPageChanged: (index,reason)=>IndicatorCubit.get(context).changeIndicator(index)
                                      ),
                                    ),
                                    AnimatedSmoothIndicator(
                                      activeIndex: IndicatorCubit.get(context).indicatorIndex,
                                      count: image.length,
                                      effect: const ScrollingDotsEffect(
                                          spacing:  8.0,
                                          radius:  10.0,
                                          dotWidth:  10.0,
                                          dotHeight:  10.0,
                                          strokeWidth:  1,
                                          dotColor:  Colors.grey,
                                          activeDotColor:  defaultColor
                                      ),

                                    ),
                                    SizedBox(height: height/70,),
                                    GridView.count(
                                        crossAxisCount: 2,
                                        childAspectRatio: 1/1.69,
                                        shrinkWrap: true,
                                        mainAxisSpacing: 8.0,
                                        crossAxisSpacing: 8.0,
                                        physics: const NeverScrollableScrollPhysics(),
                                        children:List.generate(
                                            10, (index)=>InkWell(
                                              onTap: (){
                                                navigateTo(context, const ProductDetails());
                                              },
                                              child: const BuildProductItemWidget(
                                                itemType: 1,
                                                productPrice: '275',
                                                productCategory: 'best sales',
                                                productName: 'فستان نسائى طويل للسهرات',
                                                productImage: 'assets/images/onBoarding.png',),
                                            )
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          return const SizedBox(height: 0,);

                        },
                      );
                    }
                    return const SizedBox(height: 0,);
                  },
                ),
              );
            },

          );
        },
      ),
    );
  }

}
List<Widget> image=[
  Image.asset('assets/images/slider.png'),
  Image.asset('assets/images/slider.png'),
  Image.asset('assets/images/slider.png'),
];