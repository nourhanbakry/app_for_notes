import 'package:flutter/material.dart';
import 'package:notes/Widgets/custom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            CustomAppbar(),
          ],
        ),
      ),
    );
  }
}
