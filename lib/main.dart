import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/bloc_observer.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

void main() async {
  Hive.registerAdapter(NoteModelAdapter()); // to read data
  await Hive.initFlutter();  // to inialize hive
  await Hive.openBox<NoteModel>(kNotesBox); // to open box for data
  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
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
