import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';

class ContentInfo extends StatelessWidget {
  const ContentInfo({super.key, required this.house});
  final House house;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              house.name,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              house.address,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 14,
                  ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "5000 sqft",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 14,
                  ),
            ),
            SizedBox(
              height: 8,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "\$4455",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextSpan(
                    text: " Per month",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
