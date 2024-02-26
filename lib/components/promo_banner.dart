import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/components/button.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PromoBannerCard(
            image: 'assets/sushi (2).png',
            label: 'Redeem',
            promo: 'Get 32% promo',
            onTap: () {},
          ),
          PromoBannerCard(
            image: 'assets/sushi (3).png',
            label: 'Redeem',
            promo: 'Get 15% promo',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class PromoBannerCard extends StatelessWidget {
  const PromoBannerCard({
    super.key,
    required this.promo,
    required this.label,
    required this.image,
    this.onTap,
  });

  final String promo;
  final String label;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 138, 60, 55),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    promo,
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  //redeen button
                  MyButton(
                    text: label,
                    onTap: onTap,
                  ),
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              // image
              Image.asset(
                image,
                height: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
