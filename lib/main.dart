import 'package:digital_library/screens/large/main_screen_large.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Directory? localStorage;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // localStorage = await getApplicationDocumentsDirectory();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
