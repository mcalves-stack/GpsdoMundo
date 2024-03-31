import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'gpsdomundo_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = 'marvelous';
  final String title = 'Rio de Janeiro';
  final String description = 'A cidade maravilhosa.';
  final String tourist = 'Acabrina Boina';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://blog.123milhas.com/wp-content/uploads/2022/12/conheca-os-lugares-com-as-melhores-vistas-do-rio-de-janeiro-conexao123.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: GpsdoMundoTheme.darkTextTheme.bodyLarge,
            ),
            Positioned(
              top: 20,
              child: Text(
                title,
                style: GpsdoMundoTheme.darkTextTheme.displayMedium,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: GpsdoMundoTheme.darkTextTheme.displayMedium,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text(
                tourist,
                style: GpsdoMundoTheme.darkTextTheme.displayMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
