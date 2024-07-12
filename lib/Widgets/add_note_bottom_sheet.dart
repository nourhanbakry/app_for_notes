import 'package:flutter/material.dart';
import 'package:notes/Widgets/custom_button.dart';
import 'package:notes/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
                hintText: "title",
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
            SizedBox(height: 15),
            CustomTextField(
                hintText: "content",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 70)),
            SizedBox(height: 60),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
