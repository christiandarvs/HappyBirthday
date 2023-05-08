import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happybirthday/message.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8A0BF),
      // backgroundColor: Colors.red.shade200,
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            repeatForever: true,
            pause: const Duration(seconds: 2),
            animatedTexts: [
              TyperAnimatedText('Happy Birthday!',
                  textStyle: GoogleFonts.poppins(
                      letterSpacing: 1.5,
                      fontSize: 35, // orig size - 33
                      fontWeight: FontWeight.bold),
                  speed: const Duration(milliseconds: 120),
                  curve: Curves.easeInOut),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              // highlightColor: const Color(0xffE8A0BF),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const MessagePage();
                }));
              },
              child: Hero(
                tag: 'cuteImage',
                child: Image.asset(fit: BoxFit.cover, 'images/cutegreet.png'),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Tap the image',
            style: GoogleFonts.poppins(fontSize: 17),
          )
        ],
      ))),
    );
  }
}
