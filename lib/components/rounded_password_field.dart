import 'package:app_work/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({
    Key? key,
    required this.hintext,
    required this.onChanged,
    required this.passwordController,
  }) : super(key: key);
  final String hintext;
  final ValueChanged<String> onChanged;
  final TextEditingController passwordController;

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    var obscureText = true;
    return PasswordFieldContainer(
      child: TextFormField(
        controller: widget.passwordController,
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Le champ ne peut pas être une chaîne vide';
          } else if (value.length < 8) {
            return 'Le mot de passe doit contenir au moins 8 caracteres';
          }
          return null;
        },
        obscureText: obscureText,
        onChanged: widget.onChanged,
        style: const TextStyle(
          color: cprimary,
        ),
        decoration: InputDecoration(
          icon: const Icon(
            Icons.lock,
            color: cprimary,
          ),
          hintText: widget.hintext,
          hintStyle: GoogleFonts.belleza(color: cprimary, fontSize: 16),
          border: const UnderlineInputBorder(),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.visibility,
              color: cprimary,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}

class PasswordFieldContainer extends StatelessWidget {
  const PasswordFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        // margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.7,
        // decoration: BoxDecoration(
        //     color: kthird, borderRadius: BorderRadius.circular(29)),
        child: child);
  }
}
