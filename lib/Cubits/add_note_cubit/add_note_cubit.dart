import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/Cubits/add_note_cubit/add_note_state.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(InialAddNoteState());
  Color color =const Color(0XFF45B69C);

  addNote({required NoteModel note}) async {
    note.color = color.value;
    emit(LoadingAddNoteState());
    try {
      var notesBox = Hive.box<NoteModel>(
          kNotesBox); //Box<E> genertic accepts any type and deal with it
      await notesBox.add(note); //add accepts dynamic
      emit(SuccessAddNoteState());
    } catch (e) {
      emit(FailureAddNoteState(errorMessage: e.toString()));
      throw Exception("there was an error ${e.toString()}");
    }
  }
}
