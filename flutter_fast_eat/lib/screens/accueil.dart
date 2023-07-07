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
          name: 'Nouille - Republique',
          price: '13€',
          description: 'Frais de prise en charge: 0,99€   10-20min 0.3Km',
          imageSrc: 'assets/nouille.webp'),
      ProductCard(
          name: 'Crepe - Republique',
          price: '13.90€',
          description: 'Frais de prise en charge: 0,99€   10-20min 0.3Km',
          imageSrc: 'assets/crepe.jpeg'),
      ProductCard(
          name: 'Burger - Republique',
          price: '12.90€',
          description: 'Frais de prise en charge: 0,99€   10-20min 0.3Km',
          imageSrc: 'assets/burger.png'),
      ProductCard(
          name: 'Ananas Food - Republique',
          price: '11€',
          description: 'Frais de prise en charge: 0,99€   10-20min 0.3Km',
          imageSrc: 'assets/photo food ananas.png'),
      ProductCard(
          name: 'Nouille - Republique',
          price: '12€',
          description: 'Frais de prise en charge: 0,99€   10-20min 0.3Km',
          imageSrc: 'assets/nouille.webp'),
      ProductCard(
          name: 'Hot-dog - Republique',
          price: '15€',
          description: 'Frais de prise en charge: 0,99€   10-20min 0.3Km',
          imageSrc: 'assets/hot-dog.png'),
      ProductCard(
          name: 'Healthy - Republique',
          price: '10€',
          description: 'Frais de prise en charge: 0,99€   10-20min 0.3Km',
          imageSrc: 'assets/healthy.png'),
      ProductCard(
          name: 'Junk.food - Republique',
          price: '23€',
          description: 'Frais de prise en charge: 0,99€   10-20min 0.3Km',
          imageSrc: 'assets/junk-food.png'),
    ];

    return SafeArea(
      child: Container(
        child: SizedBox(
          height: 1000,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                child: Column(
                  children: [
                    //Padding(
                    //padding: const EdgeInsets.symmetric(horizontal: 15),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CategoryCard(
                              title: 'Sushi',
                              image: Image.asset("assets/sushi.jpg")),
                          const SizedBox(width: 10),
                          CategoryCard(
                            title: 'Asiatique',
                            image: Image.asset("assets/asian.jpg"),
                          ),
                          const SizedBox(width: 10),
                          CategoryCard(
                            title: 'Pizza',
                            image: Image.asset("assets/pizza2.jpg"),
                          ),
                          const SizedBox(width: 10),
                          CategoryCard(
                            title: 'Indienne',
                            image: Image.asset("assets/indian.jpg"),
                          ),
                          const SizedBox(width: 10),
                          CategoryCard(
                            title: 'Sushi',
                            image: Image.asset("assets/sushi.jpg"),
                          ),
                          const SizedBox(width: 10),
                          CategoryCard(
                            title: 'Asian',
                            image: Image.asset("assets/asian.jpg"),
                          ),
                          const SizedBox(width: 10),
                          CategoryCard(
                            title: 'Pizza',
                            image: Image.asset("assets/pizza2.jpg"),
                          ),
                          const SizedBox(width: 10),
                          CategoryCard(
                            title: 'Indienne',
                            image: Image.asset("assets/indian.jpg"),
                          ),
                        ],
                      ),
                    ),
                    //),
                    const SizedBox(
                      height: 40,
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
