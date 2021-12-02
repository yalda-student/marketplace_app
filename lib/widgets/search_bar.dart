import 'package:flutter/material.dart';
import 'package:flutter_application_marketplace/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.75,
      height: 50,
      decoration: BoxDecoration(
        color: AppConstants.greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const TextField(
        decoration: InputDecoration(
            hintText: 'Search ...',
            suffixIcon: Icon(Icons.mic_rounded, color: Colors.grey),
            prefixIcon: Icon(Icons.search_rounded, color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }
}
