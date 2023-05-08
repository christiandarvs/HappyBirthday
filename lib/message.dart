import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8A0BF),
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              width: 350, // orig size - 300
              height: 510,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            width: 60,
                            fit: BoxFit.cover,
                            height: 60,
                            'images/cake.png'),
                      ),
                      Text(
                        'Message for you',
                        style: GoogleFonts.poppins(
                            letterSpacing: 1,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // const Divider(color: Colors.black),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(
                      '\tGood morning! I hope you have enough sleep to celebrate your birthday. What a tough 2022, wasn\'t it? I may not know what\'s happening in your life, but I\'m proud of you because you overcame last year\'s challenges. I wish you the best things in life: family, friends, relationships, and self-growth. Enjoy this day! \n\n\tAlways remember that you\'re worth it. Your worth isn\'t defined by our society. Best of luck with your future endeavors! I\'m always here to support you! 💘 \n\n-Laj',
                      style: GoogleFonts.poppins(),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Center(
                    child: Hero(
                      tag: 'cuteImage',
                      child: Image.asset(
                        'images/cutemessage.png',
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  )
                ],
              ))
        ],
      ))),
    );
  }
}
