import 'package:flutter/material.dart';
import 'package:flutter_application_marketplace/app_data.dart';
import 'package:flutter_application_marketplace/widgets/basket.dart';
import 'package:flutter_application_marketplace/widgets/product_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  static const String routeName = 'category-page';

  @override
  Widget build(BuildContext context) {
    final categoryName =
        (ModalRoute.of(context)!.settings.arguments as Map)['category-name'];

    final items = AppData.products
        .where((product) => product.category.name == categoryName)
        .toList();

    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          categoryName,
          style: const TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ShoppingCartIcon()
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:  (MediaQuery.of(context).size.height / 4) /
                    (MediaQuery.of(context).size.width),
                // mainAxisExtent: 300
              ),
              itemCount: items.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ProductItem(product: items[index]);
              }),
        ),
      ),
    );
  }
}
