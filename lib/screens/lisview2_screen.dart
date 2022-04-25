import 'package:flutter/material.dart';

class Lisview2Screen extends StatelessWidget {
  Lisview2Screen({Key? key}) : super(key: key);

  final options = ['Listview', 'Avatar', 'Dialog'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: ( _, index ) => MenuListTile(title: options[index])  , 
        separatorBuilder: ( _, index ) => const Divider(), 
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
      // leading: const Icon(Icons.add),
      // subtitle: const Text('Lorem ipsum dolor'),
      trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
      onTap: () {},
    );
  }
}
