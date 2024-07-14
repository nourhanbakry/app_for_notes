import 'package:flutter/material.dart';
import 'package:notes/Views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  runApp(const NotesApp());
  await Hive.initFlutter();
  await Hive.openBox("Notes");
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
