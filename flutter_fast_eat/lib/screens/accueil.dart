import 'package:food/components/category_card.dart';
import 'package:food/components/header.dart';
import 'package:food/components/product.dart';
import 'package:food/screens/about.dart';
import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;

    List<Widget> products = [
      ProductCard(
          name: 'Squre - Republique',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
      ProductCard(
          name: 'Squre - Republique',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
      ProductCard(
          name: 'Squre - Republique',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
      ProductCard(
          name: 'Squre - Republique',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
      ProductCard(
          name: 'Squre - Republique',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
      ProductCard(
          name: 'Squre - Republique',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
      ProductCard(
          name: 'Squre - Republique',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
      ProductCard(
          name: 'Squre - Republique',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
      ProductCard(
          name: 'Squre - Republique',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
      ProductCard(
          name: 'Cotton shirt Regular Fit',
          price: '5000 FCFA',
          imageSrc: 'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
    ];

    return SafeArea(
      
      child: Container(
        child: SizedBox(
          height: 1000,
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          CategoryCard(
                            title: 'Burger',
                            image: Image.network("https://img.freepik.com/free-photo/double-hamburger-isolated-white-background-fresh-burger-fast-food-with-beef-cream-cheese_90220-1192.jpg?t=st=1688686822~exp=1688690422~hmac=ab3f6050d0ae1f152c3a023c19a2d3f1f7c263eb8d6b8ad0aadf84b84029a060&w=740"),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CategoryCard(
                            title: 'Burger',
                             image: Image.network("https://img.freepik.com/premium-psd/psd-breakfast-food-menu-restaurant-social-media-instagram-square-post-template-banner-premium-template_507402-435.jpg"),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CategoryCard(
                            title: 'Burger',
                             image: Image.network("https://img.freepik.com/free-photo/double-hamburger-isolated-white-background-fresh-burger-fast-food-with-beef-cream-cheese_90220-1192.jpg?t=st=1688686822~exp=1688690422~hmac=ab3f6050d0ae1f152c3a023c19a2d3f1f7c263eb8d6b8ad0aadf84b84029a060&w=740"),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CategoryCard(
                            title: 'Burger',
                             image: Image.network("https://img.freepik.com/premium-photo/large-bowl-food-with-fish-vegetables_197463-2405.jpg?w=740"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              // PRODUCTS
              Expanded(
                child: CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(20),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 1,
                      // childAspectRatio: (itemWidth / itemHeight),
                      children: products.map((product) => product).toList(),
                    ),
                  ),
                ],
              )),
            
            

            ],
          ),
        ),
      ),
    );
  }
}

