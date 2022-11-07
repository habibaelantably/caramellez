
import 'package:caramellez/business_layer/image_product_color_cubit/image_product_color_cubit.dart';
import 'package:caramellez/business_layer/image_product_color_cubit/image_product_color_state.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageView extends StatelessWidget
{
  const ImageView({Key? key,required this.mainImageURL,required this.imageURL}) : super(key: key);
  final String mainImageURL;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
   return BlocProvider(
     create: (context)=>ImageProductColorCubit(),
     child: BlocConsumer<ImageProductColorCubit,ImageProductColorStates>(
       builder: (BuildContext context, state) {
         return Container(
             height: 450,
             width: double.infinity,
             decoration:  BoxDecoration(
               image: DecorationImage(image: AssetImage(mainImageURL),fit: BoxFit.cover),
               borderRadius: const BorderRadius.all(Radius.circular(20.0)),
             ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(
                     height:250,
                     width: 70,
                   child: ListView.separated(
                       itemBuilder:(context,index)=> InkWell(
                         onTap: (){
                           ImageProductColorCubit.get(context).changeProductColor(index);
                         },
                         child: Container(
                           height: 70,
                           width: 70,
                           decoration:  BoxDecoration(
                               image:  DecorationImage(image: AssetImage(imageURL),fit: BoxFit.cover),
                               borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                               border: Border.all(
                                 color: ImageProductColorCubit.get(context).productColor==index? defaultColor : Colors.grey,
                                 width: 1,
                               )
                           ),
                         ),
                       ),
                       separatorBuilder:(context,index)=> const SizedBox(height: 10,),
                       itemCount: 4,
                     shrinkWrap: true,
                   ),)

                 ],
               ),
             )


         );
       },
       listener: (BuildContext context, Object? state) {  },

     ),
   );
  }

}