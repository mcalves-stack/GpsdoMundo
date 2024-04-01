import 'dart:math';

import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/3/3a/Parque_Lage_RJ.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Guia Turístico',
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 12,
                runSpacing: 12,
                children: [
                  Chip(
                    label: Text(
                      'Natureza',
                      style: GpsdoMundoTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete' as num);
                    },
                  ),
                  Chip(
                    label: Text(
                      'Água',
                      style: GpsdoMundoTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete' as num);
                    },
                  ),
                  Chip(
                    label: Text(
                      'Arquitetura',
                      style: GpsdoMundoTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete' as num);
                    },
                  ),
                  Chip(
                    label: Text(
                      'Arquitetura',
                      style: GpsdoMundoTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('delete' as num);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
