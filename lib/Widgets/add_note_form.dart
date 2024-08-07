import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/Cubits/add_note_cubit/add_note_state.dart';
import 'package:notes/Widgets/colors_list_view.dart';
import 'package:notes/Widgets/custom_button.dart';
import 'package:notes/Widgets/custom_text_field.dart';
import 'package:notes/models/note_model.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> globalKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: globalKey,
      child: Column(
        children: [
          CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hintText: "title"),
          const SizedBox(height: 15),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: "content",
            maxLine: 5,
          ),
          const SizedBox(height: 20),
          const ColorsListView(),
          const SizedBox(height: 20),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is LoadingAddNoteState
                    ? true
                    : false, // to rebuild the button according to state
                onTap: () {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    final formattedDate =
                        DateFormat('dd-MM-yyyy').format(DateTime.now());
                    var note = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note: note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

