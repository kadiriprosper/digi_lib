import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';

class StorageService {
  static Future<bool> uploader(FilePickerResult selectedPdf) async {
    String? pdfName = selectedPdf.names.first;
    Uint8List pdfBytes = selectedPdf.files.first.bytes!;
    final storageRef =
        await FirebaseStorage.instance.ref('books/$pdfName').putData(pdfBytes);
    if (storageRef.state == TaskState.success) {
      return true;
    } else {
      return false;
    }
  }

  bool downloader() {
    return false;
  }
}
