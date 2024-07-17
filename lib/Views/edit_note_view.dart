import 'package:flutter/material.dart';
import 'package:notes/Widgets/edit_notes_view_body.dart';
import 'package:notes/models/note_model.dart';

class EditNoteView extends StatelessWidget {
 final  NoteModel note;
  const EditNoteView({super.key,required this.note});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNotesViewBody(note: note),
    );
  }
}
