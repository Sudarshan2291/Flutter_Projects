import 'package:get_storage/get_storage.dart';
import '../models/note_model.dart';

class StorageService {
  final GetStorage _box = GetStorage();

  static const String _notesKey = 'notes';

  /// Read all notes from storage
  List<Note> readNotes() {
    final storedNotes = _box.read<List>(_notesKey);
    if (storedNotes != null) {
      return storedNotes.map((note) => Note.fromJson(Map<String, dynamic>.from(note))).toList();
    }
    return [];
  }

  /// Write all notes to storage
  void writeNotes(List<Note> notes) {
    final noteList = notes.map((note) => note.toJson()).toList();
    _box.write(_notesKey, noteList);
  }

  /// Clear all notes
  void clearNotes() {
    _box.remove(_notesKey);
  }
}
