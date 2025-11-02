import 'package:flutter/material.dart';
import 'package:nots_app/widget/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditViewNoteBody());
  }
}
