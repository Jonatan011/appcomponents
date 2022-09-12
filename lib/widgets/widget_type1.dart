import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.add_card_sharp, color: AppTheme.primaryColor),
            title: Text("soy un titulo"),
            subtitle:
                Text("aklsjdlkasdjjjjjjjjjjjjjjjjjjjjjjjjasklndfasjlfhnasl"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancelar"),
                ),
                TextButton(onPressed: () {}, child: const Text("Ok"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
