import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20), //ajustar la ubicacion de mi elemento
          children: const [
            CustomCard1(),
            CustomCard1(),
            CustomCard1(),
            CustomCard1(),
            CustomCard1()
          ],
        ));
  }
}
