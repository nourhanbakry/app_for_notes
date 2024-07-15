import 'package:flutter/material.dart';
import 'package:notes/Widgets/custom_appbar.dart';
import 'package:notes/Widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomAppbar(title: "Edit Note", icon: Icons.check),
          const SizedBox(height: 20),
          CustomTextField(
              hintText: "title",
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
          const SizedBox(height: 15),
          CustomTextField(
              hintText: "content",
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 70)),
        ],
      ),
    );
  }
}
