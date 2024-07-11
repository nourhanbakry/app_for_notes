import 'package:flutter/material.dart';
import 'package:notes/Widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notes", style: TextStyle(fontSize: 32)),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
