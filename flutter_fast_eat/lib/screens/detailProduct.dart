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
        title: Image.asset(
          "assets/logo_fast_eat.jpg",
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
            Image.asset(
              'assets/nouille.webp',
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
              ' sit amet, consectetur lorem, sed do eiusmod tempor incididunt ut labore',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
