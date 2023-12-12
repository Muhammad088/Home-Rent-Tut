import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: "Search here ...",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
        ),
      ),
    );
  }
}
