import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/note_controller.dart';
import '../services/theme_service.dart';
import 'add_note_screen.dart';
import 'widgets/note_tile.dart';

class HomeScreen extends StatelessWidget {
  final NoteController noteCtrl = Get.put(NoteController());
  final ThemeService themeService = ThemeService();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("📝 Notes"),
        actions: [
          IconButton(
            icon: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => themeService.toggleTheme(),
          ),
        ],
      ),
      body: Obx(() => noteCtrl.notes.isEmpty
          ? Center(child: Text("No notes yet. Tap 'Add Note' to start!"))
          : ListView.builder(
              itemCount: noteCtrl.notes.length,
              itemBuilder: (context, index) {
                final note = noteCtrl.notes[index];
                return NoteTile(note: note, index: index);
              },
            )),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () => Get.to(() => AddNoteScreen()),
        icon: const Icon(Icons.add),
        label: const Text("Add Note"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
