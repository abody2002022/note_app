part of 'notes_cubit.dart';

@immutable
class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSucces extends NotesState {
  final List<NoteModel> notes;

  NotesSucces(this.notes);
}

class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure(this.errMessage);
}
