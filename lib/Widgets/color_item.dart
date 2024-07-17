import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  bool isActive;
  Color color;
  ColorItem({super.key, required this.isActive,required this.color});

  @override
  Widget build(BuildContext context) {
    return isActive
        ?  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
                child: CircleAvatar(backgroundColor: color, radius: 10)))
        :  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(backgroundColor: color, radius: 10),
          );
  }
}
