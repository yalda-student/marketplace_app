import 'package:flutter/material.dart';
import 'package:flutter_application_marketplace/constants.dart';
import 'package:flutter_application_marketplace/pages/cart.dart';

class ShoppingCartIcon extends StatelessWidget {
  const ShoppingCartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(CartPage.routeName),
      child: Stack(
        children: const [
          Icon(
            Icons.shopping_cart_rounded,
            size: 32,
          ),
          Positioned(
            child: CircleAvatar(
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              radius: 7,
              backgroundColor: AppConstants.greenTextColor,
            ),
            top: 0,
            right: 0,
          )
        ],
      ),
    );
  }
}
