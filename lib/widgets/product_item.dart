import 'package:flutter/material.dart';
import 'package:flutter_application_marketplace/app_data.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: ClipRRect(
              child: Image.network(product.imageUrl,
                  height: 120, width: 150, fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Text(product.name),
          RatingBarIndicator(
              itemSize: 20,
              rating: product.startCount,
              direction: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, _) =>
                  const Icon(Icons.star_rate_rounded, color: Colors.amber)),
          Row(
            children: [
              Text('\$${product.price}',
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.add_shopping_cart_rounded))
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
