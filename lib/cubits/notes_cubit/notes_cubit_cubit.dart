import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/const.dart';
import 'package:nots_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notesList = notesBox.values.toList();
      emit(NotesCubitsucess(notesList: notesList));
    } catch (e) {
      emit(NotesCubitfailuer(errMassage: e.toString()));
    }
  }
}
