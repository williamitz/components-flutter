import 'package:flutter/material.dart';

import 'package:components_app/widgets/widgets.dart';
class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Card - screen'),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children:  const [
          CustomCard(),
          SizedBox( height: 10.0, ),
          CustomCardImg( urlImg: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg', titleImg: 'Un bello paisaje',),
          SizedBox( height: 10.0, ),
          CustomCardImg( urlImg: 'https://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg', ),
          SizedBox( height: 10.0, ),
          CustomCardImg( urlImg: 'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg', ),
        ],
      ),
    );
  }
}

