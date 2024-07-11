import 'package:flutter/material.dart';
import 'package:notes/Widgets/custom_appbar.dart';
import 'package:notes/Widgets/custom_notes_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [CustomAppbar(), NotesListView()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 33, 32, 32),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
