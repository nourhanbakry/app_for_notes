class AdddNoteState {}

class InialAddNoteState extends AdddNoteState {}

class LoadingAddNoteState extends AdddNoteState {}

class SuccessAddNoteState extends AdddNoteState {}

class FailureAddNoteState extends AdddNoteState {
  final String errorMessage;

  FailureAddNoteState({required this.errorMessage});

}
