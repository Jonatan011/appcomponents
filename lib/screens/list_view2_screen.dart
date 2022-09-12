import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const options = ["MegaMente", "Superman", "Batman", "Iron man"];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hola2"),
          backgroundColor: AppTheme.primaryColor,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(
              Icons.add_alarm_sharp,
              color: AppTheme.primaryColor,
            ),
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_rounded,
                color: AppTheme.primaryColor),
            // ignore: avoid_print
            onTap: () => print(options[index]),
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
