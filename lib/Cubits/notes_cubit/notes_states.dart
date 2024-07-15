import 'package:notes/models/note_model.dart';

class NotesStates {}

class InialNotesStates extends NotesStates {}

class LoadingNotesStates extends NotesStates {}

class SuccessNotesStates extends NotesStates {
  final List<NoteModel> notes;

  SuccessNotesStates({required this.notes});

}

class FailureNotesStates extends NotesStates {
  final String errorMessage;

  FailureNotesStates({required this.errorMessage});
}
