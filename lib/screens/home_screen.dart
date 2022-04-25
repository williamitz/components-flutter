import 'package:flutter/material.dart';
import 'package:components_app/router/app_router.dart';
import 'package:components_app/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: AppRouter.menuOpt.length,
        itemBuilder: (context, i) {
          final opt = AppRouter.menuOpt[i];

          return ListTile(
            title: Text( opt.name ),
            leading: Icon(opt.icon , color: AppTheme.primary),
            trailing: Icon( Icons.arrow_forward_ios, color: AppTheme.primary ),
            onTap: () {
              Navigator.pushNamed(context, opt.route);
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
