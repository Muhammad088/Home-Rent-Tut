import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';
import 'package:house_rent/widget/circle_icon_button.dart';

class BestOffer extends StatelessWidget {
  final listOfOffers = House.generateBestOffers();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Offers",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "See All",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          SizedBox(
            width: 8,
          ),
          ...listOfOffers.map(
            (e) => Container(
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(e.imageUrl),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            e.address,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    child: CircleIconButton(
                        iconUrl: "assets/icons/heart.svg", color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
