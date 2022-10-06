
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';

class StepperWidget extends StatelessWidget
{
  const StepperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AnotherStepper(
      stepperList: stepperData,
      stepperDirection: Axis.vertical,
      horizontalStepperHeight: 70,
      dotWidget: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border:Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 40,
            width: 40,
            decoration:  const BoxDecoration(
              color:defaultColor,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child:const Icon(Icons.check, color: Colors.white),
          ),
        ),
      ),
      activeIndex: 0,
      activeBarColor: defaultColor,
      inActiveBarColor: Colors.grey,
    );
  }

}
List<StepperData> stepperData = [
  StepperData(
    title: "order Placed",
    subtitle: "order Placed order Placed order Placed order Placed order Placed order Placed",
  ),
  StepperData(
    title: "on the way",
    subtitle: "on the way on the way on the way on the way on the way on the way ",
  ),
  StepperData(
    title: "delivered",
    subtitle: "delivered delivered delivered delivered delivered delivered delivered",
  ),
];