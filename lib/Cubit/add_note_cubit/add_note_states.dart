part of 'add_note_cubit.dart';

@immutable
class AddNoteState {}

class AddNoteCubitInitial extends AddNoteState {}

class AddNoteCubitLoading extends AddNoteState {}

class AddNoteCubitSuccess extends AddNoteState {}

class AddNoteCubitFailure extends AddNoteState {
  final String errMessage;

  AddNoteCubitFailure(this.errMessage);
}
