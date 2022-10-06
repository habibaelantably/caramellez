
import 'package:caramellez/presentation_layer/widgets/order_widget/order_widget.dart';
import 'package:caramellez/presentation_layer/widgets/stepper_widget/stepper_widget.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget
{
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        leading:   Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed:(){
            Navigator.pop(context);
          },
          color: Colors.black,
          ),
        ),
        title: const Text("order details",
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
          children: [
            BuildOrderItem(
              orderStatus: 'canceled',
              orderNo: 1,
              username: 'Habiba',
              total: '340',),
            const StepperWidget()
          ],
        ),
      ),

    );
  }

}

