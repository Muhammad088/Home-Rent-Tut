import 'package:flutter/material.dart';
import 'package:house_rent/screen/home/widget/best_offer.dart';
import 'package:house_rent/screen/home/widget/categories.dart';
import 'package:house_rent/screen/home/widget/custom_app_bar.dart';
import 'package:house_rent/screen/home/widget/custom_bottom_navigation_bar.dart';
import 'package:house_rent/screen/home/widget/recommended_house.dart';
import 'package:house_rent/screen/home/widget/welcome_text.dart';
import 'package:house_rent/screen/home/widget/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            Categories(),
            RecommendedHouse(),
            BestOffer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
