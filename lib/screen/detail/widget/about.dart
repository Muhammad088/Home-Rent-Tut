import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About",
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ...',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
