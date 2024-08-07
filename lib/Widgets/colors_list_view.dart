import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/Widgets/color_item.dart';
import 'package:notes/constants.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          itemCount: kColorsPallet.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color =
                      kColorsPallet[index];
                  setState(() {});
                },
                child: ColorItem(
                    isActive: currentIndex == index,
                    color: kColorsPallet[index]));
          }),
    );
  }
}
