import 'dart:io';

import 'package:digital_library/screens/large/main_screen_large.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// Directory? localStorage;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // localStorage = await getApplicationDocumentsDirectory();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Community Library',
      home: MainScreenLarge(),
    );
  }
}
