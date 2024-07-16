import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/Views/edit_note_view.dart';
import 'package:notes/models/note_model.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListTile(
                      title: Text(note.title,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 32)),
                      subtitle: Text(note.subTitle,
                          style: TextStyle(
                              color: Colors.black.withOpacity(.6),
                              fontSize: 20)),
                      trailing: IconButton(
                          onPressed: () {
                            note.delete();
                            BlocProvider.of<NotesCubit>(context)
                                .fetchAllNotes();
                          },
                          icon: const Icon(Icons.delete, color: Colors.black))),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: Text(note.date,
                      style: TextStyle(color: Colors.black.withOpacity(.6))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
