import 'dart:io';
import 'package:flutter/material.dart';


class AboutUs extends StatelessWidget
{
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        leading:  Padding(
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
        title: const Text("AboutUs",
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
          children: const [
            Text('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
            style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
  
}