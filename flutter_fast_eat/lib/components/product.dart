import 'package:food/screens/detailProduct.dart';
import 'package:food/screens/home.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final String name;
  final String price;
  final String description;
  final String imageSrc;
  
  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.description,
    required this.imageSrc,
  });


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      child: GestureDetector(
          onTap:()=> Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailProduct()),
              ),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 0.0),
                ),
              ],
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // image 
                  SizedBox(
                
                    // height: 125,
                    // width: 183,
                    child: Image.asset(
                      imageSrc,   
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        name,
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),                     
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      price,
                      style: const TextStyle(fontSize: 20),
                      
                    ),
                  ),
                  Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      description,
                      style: const TextStyle(fontSize: 17),
                      
                    ),
                  ),
                  ),
                ]
              ),
            ),
          ),
        ),
    );
  }
}