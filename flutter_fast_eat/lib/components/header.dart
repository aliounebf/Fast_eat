import 'package:flutter/material.dart';


class SectionHeaderText extends StatelessWidget {
  final String title;
  final String subTitle;
  const SectionHeaderText({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            subTitle,
            style: const TextStyle(color: Colors.orange),
          )
        ],
      ),
    );
  }
}