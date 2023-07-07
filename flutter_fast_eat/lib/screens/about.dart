import 'package:flutter/widgets.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo_fast_eat.jpg',
            // width: 200,
            // height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'A propos de nous',
            style: TextStyle(fontSize: 24, fontFamily: 'Varela Round'),
          ),
          Text(
            'Fast Eat est un service de livraison de plats cuisinés lancé par Uber en 2013. Les commandes sont prises via lapplication mobile ou le site web de Uber Eats auprès des restaurants partenaires et sont livrées par des coursiers auto-entrepreneurs',
            style: TextStyle(fontSize: 18, fontFamily: 'Varela Round'),
          ),
        ],
      ),
    );
  }
}
