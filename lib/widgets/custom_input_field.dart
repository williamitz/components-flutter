import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;

  final IconData? icon;
  final IconData? suffixIcon;

  final TextInputType? keyboardType;
  final bool obscureText;

  final String frmProperty;

  // referencia del mapa
  final Map<String, String> frmValues;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false, 
    required this.frmProperty, 
    required this.frmValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      obscureText: obscureText,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        icon: icon == null ? null : Icon( icon, color: AppTheme.primary, ),
        focusColor: AppTheme.primary,
        hoverColor: AppTheme.primary,
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        // counterText: '3 letras',
        suffixIcon: Icon(suffixIcon, color: Colors.black26,),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (String? val) {
        if (val == null) return 'Este campo es requerido';
        return val.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      onChanged: (val) => frmValues[frmProperty] = val,
    );
  }
}
