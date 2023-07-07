import 'package:flutter/widgets.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'FAST EAT',
            style: TextStyle(fontSize: 34),
          ),
          SizedBox(height: 10,),
          Image.network(
            "https://img.freepik.com/vecteurs-premium/creation-logo-restaurant-restauration-rapide-hamburger-cuillere-signe-fourchette-plat-vert-orange_364304-437.jpg",
            // width: 200,
            // height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'Faite vous livrer en toute rapidité !',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
