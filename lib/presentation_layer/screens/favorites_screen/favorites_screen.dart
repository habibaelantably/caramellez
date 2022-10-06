
import 'package:caramellez/presentation_layer/widgets/product_widget/product_widget.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget
{
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:  AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        leading:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(Icons.arrow_back_ios_rounded,size: width/12,color: Colors.black,),
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

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Image.asset('assets/images/bag icon.png',height: height/15,width: width/18,),
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1/1.69,
                  shrinkWrap: true,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  physics: const NeverScrollableScrollPhysics(),
                  children:List.generate(
                      10,
                          (index)=>BuildProductItemWidget(
                            itemType: 1,
                        productPrice: '275',
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