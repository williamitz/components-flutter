import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final frmSingin = GlobalKey<FormState>();

    Map<String, String> frmValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Form(
            key: frmSingin,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  frmProperty: 'first_name',
                  frmValues: frmValues,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  frmProperty: 'last_name',
                  frmValues: frmValues,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Email del usuario',
                  keyboardType: TextInputType.emailAddress,
                  frmProperty: 'email',
                  frmValues: frmValues,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Password del usuario',
                  obscureText: true,
                  icon: Icons.key_outlined,
                  frmProperty: 'password',
                  frmValues: frmValues,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Administrador'),
                      ),
                      DropdownMenuItem(
                        value: 'Cashier',
                        child: Text('Cajero'),
                      )
                    ],
                    onChanged: ( value) {
                      frmValues['role'] = value ?? 'Admin' ;
                    }
                ),
                ElevatedButton(
                    onPressed: () {
                      // ocultar teclado
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!frmSingin.currentState!.validate()) return;

                      print('submit!! $frmValues');
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
