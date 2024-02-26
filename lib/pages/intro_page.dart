import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //const SizedBox(height: 10),
            Text(
              'SUSHI RESTAURANT',
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            // const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                'assets/sushi1.png',
              ),
            ),
            // const SizedBox(height: 5),
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
                'Feel the taste of the most popular japanese food from anywhere',
                style: TextStyle(color: Colors.grey.shade300, height: 2)),
            const SizedBox(height: 10),
            MyButton(
              text: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, 'menu_page/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
