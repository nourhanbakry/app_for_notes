import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/Cubits/notes_cubit/notes_states.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';


class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(InialNotesStates());
  fetchAllNotes() {
    emit(LoadingNotesStates());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
       List<NoteModel> notesList=notesBox.values.toList();
      emit(SuccessNotesStates(notes: notesList));
    } catch (e) {
      debugPrint(e.toString());
      emit(FailureNotesStates(errorMessage: e.toString()));
    }
  }
}
