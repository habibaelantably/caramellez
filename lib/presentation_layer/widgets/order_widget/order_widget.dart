import 'package:flutter/material.dart';

class BuildOrderItem extends StatelessWidget
{
   BuildOrderItem({Key? key,
    required this.orderNo,
    required this.orderStatus,
    required this.username,
    required this.total}) : super(key: key);
  int orderNo;
  String orderStatus;
  String username;
  String total;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 2,
          )

      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Row(
              children: [
                const Text('order number: ',
                  style:  TextStyle(
                    fontFamily: 'Din',
                    color:Colors.black,
                  ),
                ),
                Text(orderNo.toString(),
                  style: const TextStyle(
                    fontFamily: 'Din',
                    color:Colors.red,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text('order status:',
                  style:  TextStyle(
                    fontFamily: 'Din',
                    color:Colors.black,
                  ),
                ),
                Text(orderStatus,
                  style: const TextStyle(
                    fontFamily: 'Din',
                    color:Colors.green,
                  ),
                ),

              ],
            ),
            Row(
              children: [
                const Text('user name : ',
                  style:  TextStyle(
                    fontFamily: 'Din',
                    color:Colors.black,
                  ),
                ),
                Text(username,
                  style: const TextStyle(
                    fontFamily: 'Din',
                    color:Colors.black,
                  ),
                ),

              ],
            ),
            Row(
              children: [
                const Text('total :',
                  style: TextStyle(
                    fontFamily: 'Din',
                    color:Colors.black,
                  ),
                ),
                Text(total,
                  style: const TextStyle(
                      fontFamily: 'Din',
                      color:Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

}