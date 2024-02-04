import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note_cubit .dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
}
