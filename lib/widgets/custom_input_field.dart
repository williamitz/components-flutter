import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;

  final IconData? icon;
  final IconData? suffixIcon;

  final TextInputType? keyboardType;
  final bool? obscureText;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType, 
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      obscureText: obscureText ?? false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        icon: icon == null ? null : Icon(icon),
        focusColor: AppTheme.primary,
        hoverColor: AppTheme.primary,
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        // counterText: '3 letras',
        suffixIcon: Icon(suffixIcon),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (String? val) {
        if (val == null) return 'Este campo es requerido';
        return val.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      onChanged: (String val) {
        print('val ==== $val');
      },
    );
  }
}
