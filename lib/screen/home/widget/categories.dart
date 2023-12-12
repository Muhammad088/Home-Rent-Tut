import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoriesList = [
    'Top Recommended',
    'Near You',
    'Agency Recommended',
    'Most Popular'
  ];
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelect = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: currentSelect == index
                            ? Theme.of(context).colorScheme.primary
                            : Colors.transparent,
                        width: 3,
                      ),
                    ),
                  ),
                  child: Text(
                    categoriesList[index],
                    style: TextStyle(
                      color: currentSelect == index
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: currentSelect == index ? 16 : 14,
                      fontWeight: currentSelect == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(width: 16),
          itemCount: categoriesList.length),
    );
  }
}
