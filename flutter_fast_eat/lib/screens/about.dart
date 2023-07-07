import 'package:flutter/widgets.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://img.freepik.com/premium-photo/large-bowl-food-with-fish-vegetables_197463-2405.jpg?w=740',
            // width: 200,
            // height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'Hello About',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur lorem, sed do eiusmod tempor incididunt ut labore',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
