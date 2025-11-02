import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/const.dart';
import 'package:nots_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/simple_bloc_observer.dart';
import 'package:nots_app/views/edit_note.dart';
import 'package:nots_app/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  if (!Hive.isBoxOpen(kNotesBox)) {
    await Hive.openBox<NoteModel>(kNotesBox);
  }

  runApp(
    BlocProvider(create: (context) => AddNotesCubit(), child: const NotesApp()),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {EditNoteView.id: (context) => EditNoteView()},
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, fontFamily: 'Poppins'),
      home: HomeView(),
    );
  }
}
