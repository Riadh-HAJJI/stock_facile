// main.dart – début du fichier
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Windows / Linux : SQLite passe par FFI
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
  runApp(const StockFacileApp());
}
class StockFacileApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StockFacile",
     debugShowCheckedModeBanner: false,
     // Ajout du thème global
      theme: ThemeData(
        useMaterial3: true,
        // Couleur principale basée sur le code hexadécimal trouvé dans le appBar #cce8e2
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFcce8e2),//#cce8e2
          primary: const Color(0xFF5a8a7c), // Une variante plus sombre pour le texte/icônes actifs
        ),
        // Couleur de fond par défaut pour les écrans (Scaffold)
        scaffoldBackgroundColor: const Color(0xFFf4f9f7),
        // Thème global pour les AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFcce8e2),
          foregroundColor: Colors.black87, // Couleur du texte et des icônes dans l'AppBar
          elevation: 3,
        ),
      ),
     home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StockFacile'),
      ),
    );
  }
}