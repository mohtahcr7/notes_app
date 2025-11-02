part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitsucess extends NotesCubitState {
  final List<NoteModel> notesList;

  NotesCubitsucess({required this.notesList});
}

final class NotesCubitfailuer extends NotesCubitState {
  final String errMassage;

  NotesCubitfailuer({required this.errMassage});
}
