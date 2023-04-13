import 'package:flutter/material.dart';
import 'matui_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const GpsDoMundo());
}

class GpsDoMundo extends StatelessWidget {
  // 2
  const GpsDoMundo({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = GpsdoMundoTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Matuê',
      home: const Home(),
    );
  }
}
