import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';
import 'package:house_rent/screen/detail/widget/about.dart';
import 'package:house_rent/screen/detail/widget/content_info.dart';
import 'package:house_rent/screen/detail/widget/detail_app_bar.dart';
import 'package:house_rent/screen/detail/widget/house_info.dart';

class DetailPage extends StatelessWidget {
  final House house;

  const DetailPage({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailAppBar(house: house),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContentInfo(house: house),
              SizedBox(
                height: 16,
              ),
              HouseInfo(),
              SizedBox(
                height: 16,
              ),
              About(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary),
          onPressed: () {},
          child: const Center(
            child: Text(
              'Book Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
