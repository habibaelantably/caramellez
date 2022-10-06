
import 'package:caramellez/business_layer/counter_cubit/counter_cubit.dart';
import 'package:caramellez/business_layer/counter_cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItem extends StatelessWidget
{
   CartItem({Key? key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productCode
    }) : super(key: key);
  String productImage;
  String productName;
  String productPrice;
  String productCode;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          return  Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/6.5,
                width: MediaQuery.of(context).size.width/4,
                decoration:   BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image:  DecorationImage(
                    image: AssetImage(productImage),
                    fit: BoxFit.fill,
                  ),),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName, //el text by7salo overflow bardo?? w el spacer hena by5ly el widget t5tfy
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10,),
                  Text(productPrice),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              CounterCubit.get(context).addCounter();
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border:Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: Colors.white,
                              ),
                              child: const Center(child: Text('+')),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(CounterCubit.get(context).counter.toString()),
                          ),
                          InkWell(
                            onTap: (){
                              CounterCubit.get(context).minusCounter();
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border:Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: Colors.white,
                              ),
                              child: const Center(child: Text('-',style: TextStyle(fontSize: 22),)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey,
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(child: Text(productCode)),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  const Icon(Icons.delete_forever, color: Colors.red),
                ],
              )
            ],
          );
        },

      ),
    );
  }

}