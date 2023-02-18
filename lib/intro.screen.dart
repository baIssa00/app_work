import 'package:campus_ucad/screen/welcome.screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatefulWidget {
  final SharedPreferences prefs;
  final String boolKey;
  const WelcomePage({super.key, required this.prefs, required this.boolKey});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Vous cherchez un lieu à l'UCAD ?",
          body:
              "Avec l’application Gindima, découvrez votre campus en quelques clics",
          image: Center(
            child: Lottie.network(
              'https://assets6.lottiefiles.com/packages/lf20_sj0skmmg.json',
            ),
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Repérage au niveau du campus",
          body:
              "Retrouvez l’emplacement des amphis, pavillons, restaurants et autres ponits d'intéret du campus",
          image: Center(
            child: Lottie.network(
              'https://assets6.lottiefiles.com/packages/lf20_jif9vljs.json',
            ),
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Partagez votre position",
          body:
              "Guidez vos proches jusque là où vous êtes avec cette application !",
          image: Center(
            child: Lottie.network(
              // 'https://assets10.lottiefiles.com/packages/lf20_is82b4.json'),
              'https://assets5.lottiefiles.com/private_files/lf30_D4yZiV.json',
            ),
          ),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text("Terminé"),
      onDone: () {
        // On button pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()),
        ).then((value) => widget.prefs.setBool(widget.boolKey, false));
      },
      showSkipButton: true,
      skip: const Text('Sauter'),
      next: const Icon(Icons.arrow_forward),
    );
  }

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle:
            const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        bodyTextStyle: const TextStyle(fontSize: 20),
        bodyPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: const EdgeInsets.only(top: 40),
        bodyFlex: 2,
        imageFlex: 4,
        bodyAlignment: Alignment.bottomCenter,
      );
}
