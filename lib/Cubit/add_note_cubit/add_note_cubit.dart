import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/Models/note_model.dart';

part 'add_note_states.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var notesbox = Hive.box('note_box');
      await notesbox.add(note);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
    }
  }
}
