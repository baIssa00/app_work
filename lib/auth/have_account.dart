import 'package:app_work/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HaveAnAccount extends StatelessWidget {
  final bool login;
  final void Function()? press;
  const HaveAnAccount({
    Key? key,
    this.login = true,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login
              ? "Vous n'avez pas de compte ? "
              : "Vous avez déjà un compte ? ",
          style: GoogleFonts.cuprum(color: cprimary),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "S'inscrire" : "Se Connecter",
            style: GoogleFonts.cuprum(
                color: cprimary, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
