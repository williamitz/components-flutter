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
                  helperText: 'Nombre del usuario',
                  frmProperty: 'first_name',
                  frmValues: frmValues,
                  icon: Icons.person_outline,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  helperText: 'Apellido del usuario',
                  frmProperty: 'last_name',
                  frmValues: frmValues,
                  icon: Icons.person_outline,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomInputField(
                  labelText: 'Email',
                  helperText: 'Email del usuario',
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.alternate_email_outlined,
                  frmProperty: 'email',
                  frmValues: frmValues,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CustomInputField(
                  labelText: 'Password',
                  helperText: 'Password del usuario',
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

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );

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
