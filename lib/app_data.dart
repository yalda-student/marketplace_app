import 'dart:math';

class AppData {
  static List<String> get lastSearch {
    return [
      'RTX 2070',
      'iPhone12 Adapter',
      'NVIDIA GeForce GTX',
      'RTX 2050 Mulus',
      'Asus VivoBook Pro'
    ];
  }

  static List<Product> get recentProducts {
    var items = <Product>[];
    var rng = Random();

    for (var i = 0; i < 8; i++) {
      var index = rng.nextInt(products.length - 1);
      items.add(products[index]);
    }
    return items;
  }

  static List<Product> get products {
    return [
      ////////////Smartphone
      Product(
          'iPhone 13',
          'https://cdn01.zoomit.ir/2021/9/iphone-13-blue-front-back.jpg',
          799.99,
          3,
          Category.Smartphone),
      Product(
          'S21 Ultra',
          'https://moboto.ir/wp-content/uploads/2021/02/samsung-s21-ultra-SM-G998-silver-back2.jpg',
          1008.67,
          4,
          Category.Smartphone),
      Product(
          'Mi 11i',
          'https://technave.com/data/files/mall/article/202103292135304280.jpg',
          570.00,
          4,
          Category.Smartphone),
      ////////////Sneaker
      Product(
          "PUMA Men's Roma Basic Sneaker",
          'https://storage.torob.com/backend-api/base/images/X9/rn/X9rnludUO-1UD8IO.jpg',
          90.10,
          2,
          Category.Sneaker),
      Product(
          "Steve Madden Women's Maxima Sneaker",
          'https://i.pinimg.com/originals/de/92/6d/de926db43b645697aa7dd9dbe0ac2a29.jpg',
          88.99,
          4,
          Category.Sneaker),
      Product(
          "ECCO Women's Soft 7 Sneaker",
          'https://m.media-amazon.com/images/I/71XGjVpNGiL._AC_UX500_.jpg',
          62.97,
          3,
          Category.Sneaker),
      Product(
          "Steve Madden Women's Wedgie Sneaker",
          'https://m.media-amazon.com/images/I/71XGjVpNGiL._AC_UX500_.jpg',
          53.87,
          4.5,
          Category.Sneaker),
      Product(
          "Skechers Sport Women's Skech Air Relaxed Fit Fashion Sneaker",
          'https://m.media-amazon.com/images/I/8194YTm227L._AC_UX395_.jpg',
          68.29,
          5,
          Category.Sneaker),
      ////////////Beauty
      Product(
          "Love Beauty & Planet Body Lotion Delicious Glow 13.5 oz",
          'https://s3.images-iherb.com/lbp/lbp00237/l/2.jpg',
          28.29,
          3.5,
          Category.Beauty),
      Product(
          "stila Stay All Day Waterproof Liquid Eye Liner",
          'https://slimages.macysassets.com/is/image/MCY/products/2/optimized/2045542_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1',
          14.0,
          4,
          Category.Beauty),
      Product(
          "Honest Beauty Extreme Length Mascara",
          'https://m.media-amazon.com/images/I/51rqCUbnClS._SY355_.jpg',
          20.64,
          4,
          Category.Beauty),
      Product(
          "Neutrogena Makeup Remover Facial Cleansing Towelette Singles",
          'https://m.media-amazon.com/images/I/61iZ1Srs+zL._SL1269_.jpg',
          25.37,
          4,
          Category.Beauty),
      Product(
          "Fenty Beauty by Rihanna Set (Mini Gloss)",
          'https://i.pinimg.com/originals/49/a9/8a/49a98a4abd6eb370d036b3995968c2d6.jpg',
          21.45,
          3,
          Category.Beauty),
      ////////////Fashion
      Product(
          "Michael Kors Jet Set Item Large East West Cross-body",
          'https://m.media-amazon.com/images/I/617+9wxWsIL._AC_UX395_.jpg',
          93.96,
          5,
          Category.Fashion),
      Product(
          "Women's Cross Band Slippers Soft Plush Furry Cozy",
          'https://m.media-amazon.com/images/I/713Eb6q3YnL._AC_UL1500_.jpg',
          93.96,
          5,
          Category.Fashion),
      Product(
          "Dickies Women's Dri-tech Moisture Control Crew Socks Multipack",
          'https://images-na.ssl-images-amazon.com/images/I/51kuOtWORhL.jpg',
          14,
          4.5,
          Category.Fashion),
      Product(
          "Allegra K Women's Elastic Waist Party Metallic Shiny Accordion Pleated Midi Skirt",
          'https://www.u-buy.com.tw/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvNzFQUFZwTWRIVEwuX0FDX1VMMTQ0N18uanBn.jpg',
          34.99,
          4,
          Category.Fashion),
      ////////////Vegan
      Product(
          "Go Raw Pumpkin Seeds with Sea Salt, Sprouted & Organic",
          'https://m.media-amazon.com/images/I/416n8PoCrOL.jpg',
          17.84,
          4.5,
          Category.Vegan),
      Product(
          "Best Foods Vegan Dressing and Sandwich Spread, 24 oz, 2 Pack",
          'https://www.u-buy.jp/productimg/?image=aHR0cHM6Ly9pNS53YWxtYXJ0aW1hZ2VzLmNvbS9hc3IvYjJiY2I1YjQtMzM4OC00YjEwLWExMTktZjBmNDVlOTQ2MzJhXzEuODk2MjFhMWY3NjUxYzdlYmRjOWNlMGFlYjBmODMyMDkuanBlZz9vZG5XaWR0aD00MDAmYW1wO29kbkhlaWdodD00MDAmYW1wO29kbkJnPWZmZmZmZg.jpg',
          14.99,
          3.5,
          Category.Vegan),
      Product(
          "Lotus Foods Garlicky Veggie Rice Ramen Noodle Soup Cup With Freeze-Dried Chunky Veggies, 12.3 Oz ",
          'https://m.media-amazon.com/images/I/61yS8VOkceL._SY679_.jpg',
          18.29,
          4,
          Category.Vegan),
      Product(
          "Nuts Dried Fruit Gift Basket | Healthy No Sugar Added Huge Assortment of Dried Fruit Gourmet",
          'https://m.media-amazon.com/images/I/91+aTtIlfNL._SL1500_.jpg',
          26.79,
          4.5,
          Category.Vegan),
      Product(
          "Orrington Farms All Natural Vegan Broth Base & Seasoning, Chicken, 6 Ounce ",
          'https://m.media-amazon.com/images/I/91+aTtIlfNL._SL1500_.jpg',
          12.47,
          4.5,
          Category.Vegan),
      ////////////Audio
      Product(
          "Samsung HW-A450/ZA 2.1ch Soundbar with Dolby Audio (2021) , Black",
          'https://m.media-amazon.com/images/I/71oAu2Ij-1L._AC_SX425_.jpg',
          199.99,
          4.5,
          Category.Audio),
      Product(
          "Samsung HW-A450/ZA 2.1ch Soundbar with Dolby Audio (2021) , Black",
          'https://www.pikpng.com/pngl/m/260-2606751_focusrite-scarlett-6i6-usb-audio-interface-focusrite-scarlett.png',
          149.99,
          5,
          Category.Audio),
      Product(
          "Klipsch Reference Theater Pack 5.1 Channel Surround Sound System, Wireless High Fidelity Subwoofer, Wall Mountable Design, Spmor Mouse Pad",
          'https://c1.neweggimages.com/ProductImage/0W3-000R-004D1-V08.jpg',
          339.00,
          4.5,
          Category.Audio),
    ];
  }

  static List<Category> get categories {
    return [
      Category.Beauty,
      Category.Audio,
      Category.Fashion,
      Category.Smartphone,
      Category.Sneaker,
      Category.Vegan
    ];
  }
}

class Product {
  final String name;
  final String imageUrl;
  final double price;
  final double startCount;
  final Category category;

  Product(this.name, this.imageUrl, this.price, this.startCount, this.category);
}

enum Category { Beauty, Fashion, Smartphone, Vegan, Audio, Sneaker }

extension CatExtension on Category {
  String get imageUrl {
    switch (this) {
      case Category.Beauty:
        return 'https://all4urlife.com/wp-content/uploads/2021/08/beauty-a.jpg';
      case Category.Audio:
        return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwKEtZxG6q3r79lwgfTSWHzXmvUaGLW5ctag&usqp=CAU';
      case Category.Smartphone:
        return 'https://mobilecrazed.com/wp-content/uploads/2021/08/maxresdefault-41.jpg';
      case Category.Vegan:
        return 'https://www.heartfoundation.org.nz/media/images/nutrition/page-heros/plant-based-diet_737_553_c1.jpg';
      case Category.Sneaker:
        return 'https://m.media-amazon.com/images/I/81xrYvO5ZLL._UL1500_.jpg';
      case Category.Fashion:
        return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYYh2lVOwiuCH0BUWyoFrE2ru-g-isSfuqfQ&usqp=CAU';
    }
  }
}
