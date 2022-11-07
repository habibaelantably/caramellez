

import 'dart:io';

import 'package:caramellez/presentation_layer/widgets/search_widget/search_widget.dart';
import 'package:caramellez/presentation_layer/widgets/shared_widgets/default_form_field/default_form_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget
{
  final searchController = TextEditingController();

  final formKey = GlobalKey<FormState>();

   SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        leading:   Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: Platform.isIOS? const Icon(Icons.arrow_back_ios,color: Colors.black,):
            const Icon(Icons.arrow_back,color: Colors.black,),
            onPressed:(){
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
        ),
        title: const Text("Search",
          style: TextStyle(
              fontFamily: 'Din',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),

        ),
        centerTitle: true,


      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:  [

            DefaultFormField(
              controller: searchController,
              type: TextInputType.text,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/16,
              fillColor: Colors.grey[400],
              radius: 30,
              hintColor: Colors.grey[700],
              hintText: 'Search',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter search item';
                }
                return null;
              },
              borderSide: BorderSide.none,
              havePrefixIcon: false,
          ),
            const SizedBox(height: 30,),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    itemBuilder: (context,index)=>const SearchItem(productImage: 'assets/images/onBoarding.png', productPrice: '340', productName: 'name',),
                    separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                    itemCount: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

}