import 'package:get/get.dart';
import '../models/note_model.dart';
import '../storage/storage_service.dart';
import '../utils/date_formatter.dart';

class NoteController extends GetxController {
  final storage = StorageService();
  var notes = <Note>[].obs;

  @override
  void onInit() {
    notes.value = storage.readNotes();
    super.onInit();
  }

  void addNote(String title, String content) {
    Note note = Note(
      title: title,
      content: content,
      date: formattedDate(),
    );
    notes.add(note);
    saveNotes();
  }

  void updateNote(int index, String title, String content) {
    notes[index] = Note(
      title: title,
      content: content,
      date: formattedDate(),
    );
    saveNotes();
  }

  void deleteNote(int index) {
    notes.removeAt(index);
    saveNotes();
  }

  void saveNotes() {
    storage.writeNotes(notes);
  }
}
