import 'package:flutter/material.dart';
import 'package:house_rent/screen/detail/detail.dart';
import 'package:house_rent/widget/circle_icon_button.dart';

import '../../../model/house.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                height: 300,
                width: 230,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => DetailPage(
                          house: recommendedList[index],
                        ),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              recommendedList[index].imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: CircleIconButton(
                          iconUrl: "assets/icons/mark.svg",
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 0,
                        child: Container(
                            color: Colors.white54,
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recommendedList[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      recommendedList[index].address,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                CircleIconButton(
                                  iconUrl: "assets/icons/heart.svg",
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(width: 16),
          itemCount: recommendedList.length),
    );
  }
}
