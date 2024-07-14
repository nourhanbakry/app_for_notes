import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/Cubits/add_note_cubit/add_note_state.dart';
import 'package:notes/Widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is FailureAddNoteState) {
              debugPrint("${state.errorMessage}");
            }
            if (state is SuccessAddNoteState) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is LoadingAddNoteState ? true : false,
                child: const SingleChildScrollView(
                  child: AddNoteForm(),
                ));
          },
        ),
      ),
    );
  }
}
