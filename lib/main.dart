import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'home.dart';

void main() {
  runApp(const GpsDoMundo());
}

class GpsDoMundo extends StatelessWidget {
  const GpsDoMundo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = GpsdoMundoTheme.dark();

    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
