import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const options = ["MegaMente", "Superman", "Batman", "Iron man"];
    return Scaffold(
        appBar: AppBar(title: const Text("Hola")),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      leading: const Icon(
                        Icons.add_alarm_sharp,
                        color: AppTheme.primaryColor,
                      ),
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ))
                .toList()

            /* ListTile(
              leading: Icon(Icons.add_alarm_sharp),
              title: Text("holaa"),
            )
          */
          ],
        ));
  }
}
