import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/Cubits/notes_cubit/notes_states.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(InialNotesStates());

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notesList = notesBox.values.toList();
    return notesList;
  }
}
