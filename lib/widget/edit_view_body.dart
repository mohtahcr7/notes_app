import 'package:flutter/material.dart';
import 'package:nots_app/widget/app_bar.dart';
import 'package:nots_app/widget/custom_bottom.dart';
import 'package:nots_app/widget/custom_text_fiel.dart';

class EditViewNoteBody extends StatelessWidget {
  const EditViewNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomAppBar(title: 'Edit Note', icon: Icons.check),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: CustomTextField(hint: 'title'),
        ),
        SizedBox(height: 30),
        CustomTextField(hint: 'body', maxLines: 5),
        SizedBox(height: 60),
        CustomBottom(text: 'Edit', ontap: () {}),
      ],
    );
  }
}
