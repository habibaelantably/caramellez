import 'package:caramellez/presentation_layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/cart_screen/cart_screen.dart';
import 'package:caramellez/presentation_layer/screens/favorites_screen/favorites_screen.dart';
import 'package:caramellez/presentation_layer/screens/search_screen/search_screen.dart';
import 'package:caramellez/presentation_layer/widgets/home_widgets/filter_widget/filter_widget.dart';
import 'package:caramellez/presentation_layer/widgets/home_widgets/filters_list/filters_list.dart';
import 'package:caramellez/presentation_layer/widgets/product_widget/product_widget.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget
{
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        leading:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: InkWell(
              onTap: (){
                navigateTo(context, const FavoriteScreen());
              },
              child: Image.asset('assets/images/fav icon.png',)),
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
          InkWell(
              onTap: (){
                navigateTo(context, SearchScreen());
              },
              child: Image.asset('assets/images/search icon.png',height: height/14,width: width/14,)),
          SizedBox(width: width/30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
                onTap: (){
                  navigateTo(context, CartScreen());
                },
                child: Image.asset('assets/images/cart.png',height: height/13,width: width/13,)),
          ),
        ],
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
            const FiltersList(),
            const SizedBox(height: 10.0,),
            GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1/1.69,
                  shrinkWrap: true,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  physics: const NeverScrollableScrollPhysics(),
                  children:List.generate(
                      10,
                          (index)=>const BuildProductItemWidget(
                        itemType: 2,
                        productPrice: '275',
                        productCategory: 'best sales',
                        productName: 'فسان نسائى طويل للسهرات',
                        productImage: 'assets/images/productImage.png',)
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}