import 'package:app_work/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
    required this.hintext,
    required this.icon,
    required this.onChanged,
    required this.textController,
    required this.inputFormatters,
  }) : super(key: key);
  final String hintext;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextEditingController textController;
  final List<TextInputFormatter> inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: textController,
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Le champ ne peut pas être une chaîne vide';
          }
          return null;
        },
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        style: GoogleFonts.belleza(
          color: cprimary,
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: cprimary,
          ),
          hintText: hintext,
          hintStyle: GoogleFonts.belleza(color: cprimary, fontSize: 16),
          border: const UnderlineInputBorder(),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        // margin: const EdgeInsets.symmetric(vertical: ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        width: size.width * 0.7,
        // decoration: BoxDecoration(
        //     color: kthird, borderRadius: BorderRadius.circular(29),),
        child: child);
  }
}
