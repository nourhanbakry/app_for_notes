import 'package:flutter/material.dart';
import 'package:notes/Widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const CustomNoteItem();
        },
      ),
    );
  }
}
