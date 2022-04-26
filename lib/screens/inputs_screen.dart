import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: const [

              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre del usuario',
              ),

              SizedBox( height: 30.0, ),

              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido del usuario',
              ),


              SizedBox( height: 30.0, ),

              CustomInputField(
                labelText: 'Email',
                hintText: 'Email del usuario',
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox( height: 30.0, ),

              CustomInputField(
                labelText: 'Password',
                hintText: 'Password del usuario',
                obscureText: true,
                icon: Icons.key_outlined,
              ),

            ],
          ),
        ),
      ),
    );
  }
}


