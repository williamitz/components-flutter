import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Alert screen'),
      // ),
      body: Center(
        child: ElevatedButton(
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
              child: Text('Mostrar alerta')),
          onPressed: () => 
          
          Platform.isAndroid ? 
          _displayDialogAndroid(context)
          : _displayDialogIos(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.close,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text('Hello wordl'),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de mi alert'),
                SizedBox(
                  height: 20.0,
                ),
                FlutterLogo(
                  size: 90,
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('cerrar'))
            ],
          );
        });
  }

  void _displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: const Text('Hello wordl'),
            content: Column(
              children: const [
                Text('Este es el contenido de mi alert'),
                SizedBox(
                  height: 20.0,
                ),
                FlutterLogo(
                  size: 90,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('ok')
              ),
              TextButton(
                 
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('cerrar', style: TextStyle( color: Colors.red ),)
              )
            ]
          );
        });
  }
}
