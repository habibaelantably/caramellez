import 'package:caramellez/presentation_layer/widgets/category_widget/category_widget.dart';
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
          child: Image.asset('assets/images/fav icon.png',),
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
          Image.asset('assets/images/bag icon.png',height: height/16,width: width/19,),
          SizedBox(width: width/25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Image.asset('assets/images/search icon.png',height: height/16,width: width/19,),
          ),
        ],

      ),
      body:SingleChildScrollView(
        child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1/1.55,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children:List.generate(
                10,
                    (index)=>const BuildCategoryItemWidget(
                  //itemType: 1,
                  productPrice: '275',
                  productName: 'فسان نسائى طويل للسهرات',
                  productImage: 'assets/images/productImage.png',)
            )
        ),
      ),
    );
  }

}