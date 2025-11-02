import 'package:flutter/material.dart';
import 'package:nots_app/views/edit_note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.cardBackgroundColor});

  final Color cardBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, EditNoteView.id);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'title',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'subtitle for typing any thing in your mind for text',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'may 20, 2024',
                style: TextStyle(
                  color: Colors.black54.withOpacity(0.4),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
