import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';
import 'package:nots_app/const.dart';
import 'package:nots_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNotes(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFaliure(errorMessage: e.toString()));
    }
  }
}
