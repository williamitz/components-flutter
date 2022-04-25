import 'package:flutter/material.dart';

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
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          title: Text('item $index'),
          leading: const Icon(Icons.add),
          onTap: () {
            Navigator.pushNamed(context, 'card');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
