import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/Cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/Cubit/cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/Custom%20_text_fiels.dart';
import 'package:note_app/views/widgets/constance.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'Custom_button.dart';
import 'add_note_form.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocProvider(
        create: (context) => AddNoteCubit(),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteCubitFailure) {}
            if (state is AddNoteCubitSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteCubitLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: AddNoteForm()),
              ),
            );
          },
        ),
      ),
    );
  }
}
