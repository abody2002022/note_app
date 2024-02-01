import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/Custom%20_text_fiels.dart';
import 'package:note_app/views/widgets/constance.dart';

import 'Custom_button.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 34,
            ),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
