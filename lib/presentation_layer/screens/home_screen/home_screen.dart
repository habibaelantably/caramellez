
import 'package:caramellez/business_layer/home_cubit/indicator_cubit/indicator_cubit.dart';
import 'package:caramellez/business_layer/home_cubit/indicator_cubit/indicator_states.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:caramellez/presentation_layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/cart_screen/cart_screen.dart';
import 'package:caramellez/presentation_layer/screens/product_details/product_details.dart';
import 'package:caramellez/presentation_layer/screens/profile_screeen/profile_screen.dart';
import 'package:caramellez/presentation_layer/widgets/home_widgets/filter_widget/filter_widget.dart';
import 'package:caramellez/presentation_layer/widgets/product_widget/product_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget
{

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return  BlocProvider(
      create: (context)=>IndicatorCubit(),
      child: BlocConsumer<IndicatorCubit,IndicatorStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.grey[50],
              leading:   Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset('assets/images/whatsapp.png',),
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
                IconButton(icon:const Icon(Icons.person),iconSize: width/13,color: Colors.black,onPressed: (){navigateTo(context, profileScreen());},),
                SizedBox(width: width/25,),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: InkWell(
                      onTap: (){
                        navigateTo(context,const CartScreen());
                      },
                      child: Image.asset('assets/images/bag icon.png',height: height/16,width: width/19,)),
                ),
              ],

            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/14 ,
                      child: ListView.separated(
                          itemBuilder: (context,index)=>const BuildFilterWidget(filterName: 'افضل العروض'),
                          separatorBuilder: (context,index)=>SizedBox(width: MediaQuery.of(context).size.width/100,),
                          scrollDirection: Axis.horizontal,
                          itemCount: 4),
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
                           10,
                                (index)=>InkWell(
                                  onTap: (){
                                    navigateTo(context, const ProductDetails());
                                  },
                                  child: BuildProductItemWidget(
                                    itemType: 2,
                                    productPrice: '275',
                                    productCategory: 'افضل العروض',
                                    productName: 'فسان نسائى طويل للسهرات',
                                    productImage: 'assets/images/onBoarding.png',),
                                )
                        )
                    ),

                  ],
                ),
              ),
            ),
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







//     Container(
//
//   decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.5),
//         spreadRadius: 0,
//         blurRadius: 3,
//         offset: const Offset(0, 3), // changes position of shadow
//       ),
//     ],
//
//     color: Colors.white,
//
//   ),
//   child:Column(
//
//     crossAxisAlignment: CrossAxisAlignment.start,
//
//     children: [
//
//       Stack(
//
//         alignment: AlignmentDirectional.topEnd,
//
//         children: [
//
//            const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Center(
//               child: Image(
//                 image: AssetImage('assets/images/productImage.png'),
//                 height: 250,
//
//               ),
//             ),
//
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(top: 10.0,right: 10.0),
//             child: Container(
//
//               width: MediaQuery.of(context).size.width/3.6,
//               height: 30,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                 color: Colors.orangeAccent,),
//               child: Center(
//                 child: Text(
//                   'افضل العروض',
//                   style: TextStyle(
//                     fontFamily: 'Din',
//                     color:Colors.white,
//                   ),
//
//                 ),
//               ),
//
//             ),
//           ),
//
//         ],
//
//       ),
//
//       Padding(
//
//         padding: const EdgeInsets.all(5.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('namemodel',
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             Row(
//               children: const [
//                 Text('model priceL.E',
//                   style: TextStyle(
//                     color: defaultColor,
//                     fontSize: 14,
//                   ),
//                 ),
//                 SizedBox(width: 4.0,),
//               ],
//
//             ),
//
//           ],
//
//         ),
//
//       )
//
//
//
//     ],
//
//   ),
//
// );
