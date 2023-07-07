import 'package:food/screens/about.dart';
import 'package:food/screens/home.dart';
import 'package:food/screens/accueil.dart';
import 'package:food/screens/page_home.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/detailProduct.dart';

void main(){
  runApp( MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.yellow,
        // brightness: Brightness.light,
        // scaffoldBackgroundColor: Colors.amber,
      ),
    debugShowCheckedModeBanner: false,
    home: const MyHome(),
    routes: {
      '/paniers':(context) => const ListMenu(),
      '/about':(context) => const About(),
      '/detailProduct':(context) => const DetailProduct(),
    },
  ));
}