import 'dart:io';

import 'package:caramellez/presentation_layer/helpers/navigation.dart';
import 'package:caramellez/presentation_layer/screens/favorites_screen/favorites_screen.dart';
import 'package:caramellez/presentation_layer/screens/order_details_screen/order_details_scren.dart';
import 'package:caramellez/presentation_layer/widgets/order_widget/order_widget.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget
{
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        leading:   Padding(
        padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: Platform.isIOS? const Icon(Icons.arrow_back_ios,color: Colors.black,):
            const Icon(Icons.arrow_back,color: Colors.black,),
            onPressed:(){Navigator.pop(context);},
            color: Colors.black,
             ),),
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
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: (){
                  navigateTo(context,const FavoriteScreen());
                },
                child: Image.asset('assets/images/fav icon.png',height: height/13,width: width/13,)),
          ),

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
            itemBuilder: (context,index)=>InkWell(
              onTap: ()=>navigateTo(context, const OrderDetails()),
              child: BuildOrderItem(
                orderStatus: 'canceled',
                orderNo: 1,
                username: 'Habiba',
                total: '340',),
            ),
            separatorBuilder: (context,index)=> SizedBox(height: height/40,),
            itemCount: 7)
        ),
    );
  }

}