import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/note_controller.dart';
import '../../models/note_model.dart';
import '../add_note_screen.dart';

class NoteTile extends StatelessWidget {
  final Note note;
  final int index;

  NoteTile({super.key, required this.note, required this.index});

  final NoteController noteCtrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          note.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              note.content,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 6),
            Text(
              note.date,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        trailing: Wrap(
          spacing: 8,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blue),
              onPressed: () => Get.to(() => AddNoteScreen(index: index)),
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                noteCtrl.deleteNote(index);
                Get.snackbar(
                  "Note Deleted",
                  "Your note has been deleted.",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red.shade100,
                  colorText: Colors.black,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
