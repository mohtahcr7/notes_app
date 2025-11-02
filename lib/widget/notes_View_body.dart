import 'package:flutter/material.dart';
import 'package:nots_app/widget/app_bar.dart';
import 'package:nots_app/widget/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Vibes Notes', icon: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
