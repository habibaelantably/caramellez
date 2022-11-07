
import 'package:caramellez/presentation_layer/helpers/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
              vertical: 0.0),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search',
          fillColor: Colors.grey,
          focusColor: defaultColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          )),
    );
  }
}