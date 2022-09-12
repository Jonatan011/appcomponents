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
            SizedBox(height: 20),
            CustomCardType2(
              imageUri:
                  'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',
              nametext: 'Un hermosos paisaje',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUri:
                  'https://www.namesnack.com/images/Namesnack-nombres-para-compa%C3%B1%C3%ADas-de-landscape-2400x1600-2021084.jpeg?crop=2:1,smart&width=1200&dpr=2',
              nametext: 'Hermoso jardin',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUri:
                  'https://media-exp1.licdn.com/dms/image/C4D1BAQFsdjpzrtQWUA/company-background_10000/0/1519796755846?e=2147483647&v=beta&t=tA2WEp7x9015ge1Px-zpkFFUueL-uskh1SlXHTBCXrM',
              nametext: 'Hermoso lago',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUri:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSanjSqwfjzt6rQ2zEO9EasIXrkqk2wqtPmw&usqp=CAU',
            ),
          ],
        ));
  }
}
