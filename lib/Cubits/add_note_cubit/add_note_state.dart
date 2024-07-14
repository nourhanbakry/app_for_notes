class AddNoteState {}

class InialAddNoteState extends AddNoteState {}

class LoadingAddNoteState extends AddNoteState {}

class SuccessAddNoteState extends AddNoteState {}

class FailureAddNoteState extends AddNoteState {
  final String errorMessage;

  FailureAddNoteState({required this.errorMessage});

}
