import 'package:flutter/material.dart';
import 'package:flutter_application_marketplace/app_data.dart';
import 'package:flutter_application_marketplace/constants.dart';
import 'package:flutter_application_marketplace/pages/category.dart';
import 'package:flutter_application_marketplace/widgets/basket.dart';
import 'package:flutter_application_marketplace/widgets/search_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = 'home-page';

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SearchBar(),
                    IconButton(
                        onPressed: () {},
                        icon: const ShoppingCartIcon())
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Last Search',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 22))),
              _lastSearches(),
              const _HeaderWithArrow(title: 'Popular categories'),
              const _Categories(),
              const SizedBox(height: 20),
              const _HeaderWithArrow(title: 'Last seen product'),
              const SizedBox(height: 20),
              const _LastProducts()
            ],
          ),
        ),
      )),
    );
  }
}

class _lastSearches extends StatelessWidget {
  _lastSearches({Key? key}) : super(key: key);

  final items = AppData.lastSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      height: 60,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(right: 8, left: 8),
              margin: const EdgeInsets.fromLTRB(0, 4, 4, 4),
              child: Center(
                  child: Text(
                items[index],
                style: const TextStyle(color: AppConstants.greenTextColor),
              )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppConstants.greyColor)),
            );
          }),
    );
  }
}

class _HeaderWithArrow extends StatelessWidget {
  final String title;

  const _HeaderWithArrow({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 22)),
          const Icon(
            Icons.arrow_forward_rounded,
            color: AppConstants.greenTextColor,
            size: 30,
          )
        ],
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  const _Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = AppData.categories;

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Center(
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 8,
          runSpacing: 8,
          children: [
            _CategryItem(
                title: categories[0].name, imageUrl: categories[0].imageUrl),
            _CategryItem(
                title: categories[1].name, imageUrl: categories[1].imageUrl),
            _CategryItem(
                title: categories[2].name, imageUrl: categories[2].imageUrl),
            _CategryItem(
                title: categories[3].name, imageUrl: categories[3].imageUrl),
            _CategryItem(
                title: categories[4].name, imageUrl: categories[4].imageUrl),
            _CategryItem(
                title: categories[5].name, imageUrl: categories[5].imageUrl),
          ],
        ),
      ),
    );
  }
}

class _CategryItem extends StatelessWidget {
  const _CategryItem({Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      hoverColor: AppConstants.greenTextColor,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            width: 110,
            height: 110,
            child: ClipRRect(
                child: Image.network(imageUrl, fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15)),
          ),
          Text(title),
        ],
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          CategoryScreen.routeName,
          arguments: {'category-name': title},
        );
      },
    );
  }
}

class _LastProducts extends StatelessWidget {
  const _LastProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = AppData.recentProducts;

    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: products.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return _LastProductItem(
              product: products[index],
            );
          }),
    );
  }
}

class _LastProductItem extends StatelessWidget {
  const _LastProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
                width: 130,
                height: 130,
              ),
              borderRadius: BorderRadius.circular(15)),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(product.name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  RatingBarIndicator(
                    itemSize: 20,
                    rating: product.startCount,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, _) =>
                        const Icon(Icons.star_rate_rounded, color: Colors.amber),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
