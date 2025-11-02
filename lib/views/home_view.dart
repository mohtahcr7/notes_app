import 'package:flutter/material.dart';
import 'package:nots_app/widget/Add_Note_Bottom_Sheet.dart';
import 'package:nots_app/widget/notes_View_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
