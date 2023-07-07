import 'package:flutter/material.dart';
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
            style: TextStyle(fontSize: 44, color: Color(0xFF0B8D4E), fontFamily: 'Varela Round'),
          ),
          SizedBox(height: 10,),
          Image.asset(
            "assets/logo_fast_eat.jpg",
            // width: 200,
            // height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'Faite vous livrer en toute rapidité !',
            style: TextStyle(fontSize: 22, color: Color(0xFF0B8D4E), fontFamily: 'Varela Round'),
          ),
        ],
      ),
    );
  }
}
