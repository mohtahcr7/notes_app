import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/widget/custom_bottom.dart';
import 'package:nots_app/widget/custom_text_fiel.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> fromkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, body;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: fromkey,
      child: Column(
        children: [
          const SizedBox(height: 35),
          CustomTextField(
            hint: 'title',
            onSaved: (valu) {
              title = valu;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hint: 'body',
            maxLines: 5,
            onSaved: (valu) {
              body = valu;
            },
          ),
          const SizedBox(height: 80),

          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomBottom(
                isLoading: state is AddNoteLoading ? true : false,
                text: 'save',
                ontap: () {
                  if (fromkey.currentState!.validate()) {
                    fromkey.currentState!.save();
                    var note = NoteModel(
                      title: title!,
                      subtitle: body!,
                      date: DateTime.now().toString(),
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNotes(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
