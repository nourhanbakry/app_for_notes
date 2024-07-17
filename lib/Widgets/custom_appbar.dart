import 'package:flutter/material.dart';
import 'package:notes/Widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  const CustomAppbar({super.key, required this.title,required this.icon,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 32)),
           CustomIcon(icon: icon,onTap: onTap),
        ],
      ),
    );
  }
}
