import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

class CustomCardImg extends StatelessWidget {
  final String urlImg;
  final String? titleImg ;

  const CustomCardImg({Key? key, required this.urlImg, this.titleImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      elevation: 20.0,
      clipBehavior: Clip.antiAlias, // para recortar el contenido si se sale
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(children: [
        FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(urlImg),
          fit: BoxFit.cover,
          width: double.infinity,
          height: 230,
          fadeInDuration: const Duration(milliseconds: 250),
        ),

        if( titleImg != null )
          Container(
            alignment: AlignmentDirectional.centerEnd,
            child: Text( titleImg! ),
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          )
      ]),
    );
  }
}
