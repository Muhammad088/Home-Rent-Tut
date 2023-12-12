import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello Muhammad",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Find your sweet home",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
