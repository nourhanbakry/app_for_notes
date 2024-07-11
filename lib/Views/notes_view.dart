import 'package:flutter/material.dart';
import 'package:notes/Widgets/custom_appbar.dart';
import 'package:notes/Widgets/custom_notes_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [CustomAppbar(), NotesListView()],
        ),
      ),
    );
  }
}
