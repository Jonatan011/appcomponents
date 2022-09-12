import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inputs y Forms")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputFile(
                labelText: "Nombre",
                hintText: "Nombre del usuario",
                helperText: "minimo 3 caracteres",
                iconsufix: Icons.abc,
                icon: Icons.account_box_sharp,
              ),
              SizedBox(height: 30),
              CustomInputFile(
                labelText: "Apellido",
                hintText: "Apellido del usuario",
                helperText: "minimo 3 caracteres",
                iconsufix: Icons.abc,
                icon: Icons.account_box_sharp,
              ),
              SizedBox(height: 30),
              CustomInputFile(
                labelText: "Email",
                hintText: "Email del usuario",
                helperText: "minimo 3 caracteres",
                iconsufix: Icons.email_outlined,
                icon: Icons.account_box_sharp,
                keyboardType: TextInputType.emailAddress,
              ),
              CustomInputFile(
                labelText: "Contraseña",
                hintText: "Contraseña del usuario",
                helperText: "minimo 8 caracteres",
                iconsufix: Icons.password_rounded,
                icon: Icons.account_box_sharp,
                isPassword: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
class CustomInputFile extends StatelessWidget {
  const CustomInputFile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: "",
      textCapitalization: TextCapitalization.words,
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
      decoration: const InputDecoration(
        hintText: "Nombre del usuario",
        labelText: "Nombre",
        helperText: "Sólo letras",
        //counterText: "Tres caracteres"
        suffixIcon: Icon(Icons.group_outlined),
        // prefixIcon: Icon(Icons.verified_user_rounded),
        icon: Icon(Icons.admin_panel_settings),
        /*focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))*/
      ),
    );
  }
}
*/