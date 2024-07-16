import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/Cubits/notes_cubit/notes_states.dart';
import 'package:notes/Widgets/custom_note_item.dart';
import 'package:notes/models/note_model.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {
        List<NoteModel> notesList = BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              itemCount: notesList.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  CustomNoteItem(
                  note: notesList[index],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
