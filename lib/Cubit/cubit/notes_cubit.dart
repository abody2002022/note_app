import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/Models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() {
    emit(NotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>('note_box');

      List<NoteModel> notes = notesbox.values.toList();
      emit(NotesSucces(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
