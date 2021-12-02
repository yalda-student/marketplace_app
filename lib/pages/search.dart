import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

static const String routeName = 'search-page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: const SafeArea(
      child: const SingleChildScrollView(),
    ));
  }
}
