import 'package:flutter/material.dart';
import 'package:nots_app/widget/custom_item_note.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<Color> colorsList = const [
    Color(0xffFFCC80),
    Color(0xff90CAF9),
    Color(0xffA5D6A7),
    Color(0xffF48FB1),
    Color(0xffCE93D8),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          child: NoteItem(
            cardBackgroundColor: colorsList[index % colorsList.length],
          ),
        );
      },
    );
  }
}
