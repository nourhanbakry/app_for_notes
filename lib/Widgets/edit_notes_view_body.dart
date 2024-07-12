import 'package:flutter/material.dart';
import 'package:notes/Widgets/custom_appbar.dart';
import 'package:notes/Widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppbar(title: "Edit Note", icon: Icons.check),
          SizedBox(height: 20),
          CustomTextField(
              hintText: "title",
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
          SizedBox(height: 15),
          CustomTextField(
              hintText: "content",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 70)),
        ],
      ),
    );
  }
}
