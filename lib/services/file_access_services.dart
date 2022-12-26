import 'dart:io';

import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';

class FileAccessService {
  static Future<Map<bool, dynamic>> pdfPicker(BuildContext context) async {
    try {
      final pickedPdf = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc'],
      );
      return {true: pickedPdf};
    } catch (e) {
      return {false: e};
    }
  }
}
