import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custom%20_text_fiels.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomTextField()],
    );
  }
}
