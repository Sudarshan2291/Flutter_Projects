// home_screen.dart

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) => noteCtrl.setSearchQuery(value),
              decoration: InputDecoration(
                hintText: "Search notes...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              final notes = noteCtrl.filteredNotes;
              if (notes.isEmpty) {
                return Center(child: Text("No matching notes found."));
              }
              return ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];
                  final originalIndex = noteCtrl.notes.indexOf(
                    note,
                  ); // For edit/delete
                  return NoteTile(note: note, index: originalIndex);
                },
              );
            }),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () => Get.to(() => AddNoteScreen()),
        icon: const Icon(Icons.add),
        label: const Text("Add Note"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
