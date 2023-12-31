import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent/model/house.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({super.key, required this.house});
  final House house;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 400,
      child: Stack(children: [
        Image.asset(
          house.imageUrl,
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/arrow.svg"),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset("assets/icons/mark.svg"),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(300);
}
