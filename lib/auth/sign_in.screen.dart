import 'package:app_work/auth/have_account.dart';
import 'package:app_work/auth/sign_up.screen.dart';
import 'package:app_work/components/rounded_button.dart';
import 'package:app_work/components/rounded_input_field.dart';
import 'package:app_work/components/rounded_password_field.dart';
import 'package:app_work/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/signin';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: cwhite,
              boxShadow: const [
                BoxShadow(
                  // color: kwhiteColor,
                  // spreadRadius: 5,
                  blurRadius: 3,
                  // offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage("assets/images/user.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                RoundedInputField(
                  hintext: "Email ...",
                  icon: Icons.person,
                  onChanged: (valie) {},
                  textController: loginController,
                  inputFormatters: const [],
                ),
                RoundedPasswordField(
                  hintext: "Mot de passe ...",
                  onChanged: (valie) {},
                  passwordController: passwordController,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Mot de passe oublié ?",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.cuprum(
                        color: cprimary, fontWeight: FontWeight.bold),
                  ),
                ),
                RoundedButton(text: "Se Connecter", onPressed: () {}),
                SizedBox(
                  height: size.height * 0.03,
                ),
                HaveAnAccount(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
