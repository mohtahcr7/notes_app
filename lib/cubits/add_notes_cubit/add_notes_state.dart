part of 'add_notes_cubit.dart';

@immutable
abstract class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNoteLoading extends AddNotesState {}

final class AddNoteSuccess extends AddNotesState {}

final class AddNoteFaliure extends AddNotesState {
  final String errorMessage;

  AddNoteFaliure({required this.errorMessage});
}
