import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class DetailProduct extends StatelessWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image.network(
          "https://img.freepik.com/vecteurs-premium/creation-logo-restaurant-restauration-rapide-hamburger-cuillere-signe-fourchette-plat-vert-orange_364304-437.jpg",
          width: 50,
          height: 50,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000',
              // width: 200,
              // height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Square - Republique',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur lorem, sed do eiusmod tempor incididunt ut labore',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
