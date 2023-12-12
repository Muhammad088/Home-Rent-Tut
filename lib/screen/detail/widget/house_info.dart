import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MenuInfo(
              imageUrl: "assets/icons/bedroom.svg",
              content: "5 Bedrooms \n3 Master bedrooms",
            ),
            MenuInfo(
              imageUrl: "assets/icons/bathroom.svg",
              content: "4 Bathrooms \n1 pool",
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            MenuInfo(
              imageUrl: "assets/icons/parking.svg",
              content: "2 Parkings slots \n50 sqft",
            ),
            MenuInfo(
              imageUrl: "assets/icons/kitchen.svg",
              content: "2 Kitchens \n60 sqft",
            ),
          ],
        ),
      ],
    );
  }
}

class MenuInfo extends StatelessWidget {
  const MenuInfo({super.key, required this.imageUrl, required this.content});
  final String imageUrl;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SvgPicture.asset(imageUrl),
          SizedBox(
            width: 4,
          ),
          Text(content),
        ],
      ),
    );
  }
}
