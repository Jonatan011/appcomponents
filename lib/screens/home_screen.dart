import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("componentes en flutter"),
      ),
      body: Center(
          child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                    title: Text(AppRouter.menuoptions[index].name),
                    leading: Icon(AppRouter.menuoptions[index].icon,
                        color: AppTheme.primaryColor),
                    onTap: () {
                      /*
                      final route = MaterialPageRoute(
                        builder: (context) => const ListView1Screen(),
                      );
                      Navigator.push(context, route);*/

                      Navigator.pushNamed(
                          context, AppRouter.menuoptions[index].route);
                    },
                  ),
              separatorBuilder: (__, _) => const Divider(),
              itemCount: AppRouter.menuoptions.length)),
    );
  }
}
