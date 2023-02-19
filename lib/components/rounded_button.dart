import 'package:app_work/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    this.color = cprimary,
    this.textcolor = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Color color, textcolor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: color,
            foregroundColor: cwhite,
            textStyle: GoogleFonts.belleza(
              color: textcolor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            shadowColor: color,
            elevation: 5,
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.belleza(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
