import 'package:flutter/material.dart';

class CustomInputFile extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? iconsufix;
  final TextInputType? keyboardType;
  final bool isPassword;

  const CustomInputFile({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.iconsufix,
    this.keyboardType,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: "",
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: isPassword,
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) {
          return "este campo es requerido";
        }
        return value.length < 6 ? "Minimo 6 letras" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          //counterText: "Tres caracteres"
          suffixIcon: iconsufix == null ? null : Icon(iconsufix),
          // prefixIcon: Icon(Icons.verified_user_rounded),
          icon: icon == null ? null : Icon(icon)
          /*focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))*/
          ),
    );
  }
}
