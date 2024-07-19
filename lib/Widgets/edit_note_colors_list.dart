import 'package:flutter/material.dart';
import 'package:notes/Widgets/color_item.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
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
                  widget.note.color = kColorsPallet[index].value;
                  setState(() {});
                },
                child: ColorItem(
                    isActive: currentIndex == index,
                    color: kColorsPallet[index]));
          }),
    );
  }
}
