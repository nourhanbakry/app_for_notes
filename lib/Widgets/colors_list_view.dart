import 'package:flutter/material.dart';
import 'package:notes/Widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  @override
  int currentIndex = 0;
  List<Color> colorsPallet = const [
    Color(0XFFD8DDEF),
    Color(0XFFA0A4B8),
    Color(0XFFEEE1B3),
    Color(0XFF7293A0),
    Color(0XFF45B69C),
    Color.fromARGB(255, 148, 250, 226),
    Color.fromARGB(255, 33, 83, 72),
    Color.fromARGB(255, 10, 128, 100),
    Color.fromARGB(255, 19, 51, 44),
    Color.fromARGB(255, 98, 134, 125),
    Color.fromARGB(255, 8, 19, 17),
    Color.fromARGB(255, 30, 78, 66),
    Color.fromARGB(255, 37, 91, 78)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          itemCount: colorsPallet.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                    isActive: currentIndex == index,
                    color: colorsPallet[index]));
          }),
    );
  }
}
