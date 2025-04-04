import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/note_controller.dart';

class AddNoteScreen extends StatelessWidget {
  final NoteController noteCtrl = Get.find();
  final titleCtrl = TextEditingController();
  final contentCtrl = TextEditingController();
  final int? index;

  AddNoteScreen({super.key, this.index}) {
    if (index != null) {
      titleCtrl.text = noteCtrl.notes[index!].title;
      contentCtrl.text = noteCtrl.notes[index!].content;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          index == null ? "Add Note" : "Edit Note",
          style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextField(
              controller: titleCtrl,
              label: "Title",
              theme: theme,
              maxLines: 1,
            ),
            const SizedBox(height: 16),
            _buildTextField(
              controller: contentCtrl,
              label: "Description",
              theme: theme,
              maxLines: 6,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                final title = titleCtrl.text.trim();
                final content = contentCtrl.text.trim();

                if (title.isEmpty || content.isEmpty) {
                  Get.snackbar(
                    "Missing Fields",
                    "Please enter both title and content.",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.orange.shade100,
                    colorText: Colors.black,
                  );
                  return;
                }

                String message = "";

                if (index == null) {
                  noteCtrl.addNote(title, content);
                  message = "Note added successfully!";
                } else {
                  noteCtrl.updateNote(index!, title, content);
                  message = "Note updated successfully!";
                }

                Get.back();

                Future.delayed(const Duration(milliseconds: 300), () {
                  Get.snackbar(
                    "Success",
                    message,
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green.shade100,
                    colorText: Colors.black,
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                textStyle: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              child: Text(index == null ? "Add Note" : "Update Note"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required ThemeData theme,
    required int maxLines,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: theme.textTheme.bodyLarge,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: theme.textTheme.labelLarge,
        filled: true,
        fillColor: theme.cardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
