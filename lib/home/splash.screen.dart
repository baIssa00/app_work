import 'package:app_work/auth/sign_in.screen.dart';
import 'package:app_work/constants/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: size.height * 0.17,
            //   height: size.height * 0.17,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(20),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.5),
            //         spreadRadius: 2,
            //         blurRadius: 5,
            //         offset: const Offset(0, 3),
            //       ),
            //     ],
            //     color: csecondary,
            //     border: Border.all(color: csecondary, width: 0.5),
            //   ),
            // ),
            Container(
                height: MediaQuery.of(context).size.height * 1,
                decoration: const BoxDecoration(
                  color: cprimary,
                  // shape: BoxShape.circle,
                ),
                child: DecorSplash(size: size)),
          ],
        ),
      ),
    );
  }
}

class DecorSplash extends StatelessWidget {
  const DecorSplash({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        const Decor(
          top: 0.5,
          left: 0.18,
          row: 13,
          background: csecondary,
        ),
        const Decor(
          top: 0.2,
          left: 0.5,
          row: 10,
          background: Colors.teal,
        ),
        const Decor(
          top: 0.7,
          left: 0.85,
          row: 7,
          background: Color.fromARGB(255, 149, 185, 214),
        ),
        const Decor(
          top: 0.75,
          left: 0.07,
          row: 7,
          background: Color.fromARGB(255, 155, 201, 239),
        ),
        const Decor(
          top: 0.38,
          left: 0.18,
          row: 12,
          background: csecondary,
        ),
        const Decor(
          top: 0.67,
          left: 0.33,
          row: 8,
          background: Color.fromARGB(255, 206, 177, 166),
        ),
        const Decor(
          top: 0.65,
          left: 0.6,
          row: 14,
          background: Color.fromARGB(255, 239, 195, 129),
        ),
        const Decor(
          top: 0.2,
          left: 0.77,
          row: 9,
          background: Color.fromARGB(255, 119, 142, 178),
        ),
        const Decor(
          top: 0.4,
          left: 0.8,
          row: 9,
          background: Color.fromARGB(255, 102, 165, 139),
        ),
        Positioned(
          top: size.height * 0.075,
          bottom: size.height * 0.075,
          child: Container(
            width: size.height * 0.2,
            height: size.height * 0.2,
            // height: 80.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              shape: BoxShape.circle,
              color: csecondary,
              border: Border.all(color: csecondary, width: 0.5),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.075,
          bottom: size.height * 0.075,
          child: Container(
            width: size.height * 0.15,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: cprimary,
              border: Border.all(color: cgrey, width: 0.5),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.1,
          bottom: size.height * 0.1,
          child: Container(
            width: size.height * 0.09,
            height: size.height * 0.09,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage("assets/images/user.png"),
              ),
            ),
          ),
        ),
        // Positioned(
        //   top: size.height * 0.05,
        //   bottom: size.height * 0.05,
        //   child: Container(
        //     width: size.height * 0.25,
        //     height: size.height * 0.25,
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       border: Border.all(color: const Color(0xffeeeeee), width: 1.0),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
