import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/Widgets/custom_appbar.dart';
import 'package:notes/Widgets/custom_text_field.dart';
import 'package:notes/Widgets/edit_note_colors_list.dart';
import 'package:notes/models/note_model.dart';

class EditNotesViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNotesViewBody({super.key, required this.note});

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppbar(
              title: "Edit Note",
              icon: Icons.check,
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              }),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 15),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            maxLine: 5,
            hintText: widget.note.subTitle,
          ),
          const SizedBox(height: 20),
          EditNoteColorsList(note: widget.note),
        ],
      ),
    );
  }
}
