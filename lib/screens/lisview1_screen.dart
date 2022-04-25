import 'package:flutter/material.dart';

class Lisview1Screen extends StatelessWidget {
  Lisview1Screen({Key? key}) : super(key: key);

  final options = ['Listview', 'Avatar', 'Dialog'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
      ),
      body: ListView(
        children: [
          
          ...options.map(
            (e) => MenuListTile( title: e, )
          ).toList(),

        ],
      ),
    );
  }
}

class MenuListTile extends StatelessWidget {
  final String title;

  const MenuListTile({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text( title ),
      leading: const Icon(Icons.add),
      subtitle: const Text('Lorem ipsum dolor'),
      trailing: const Icon(Icons.access_alarm),
      onTap: () {},
    );
  }
}
