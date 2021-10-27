import 'package:flutter/material.dart';
import 'package:pcpscanteen/pcpscanteen_theme.dart';
import 'package:pcpscanteen/widgets/author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 550,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/card2.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Sudip Raj',
              title: 'Nepalese Desserts',
              imageProvider: AssetImage('assets/images/author.jpg'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Text('Recipe',
                        style: PcpscanteenTheme.lightTextTheme.headline1),
                    bottom: 16,
                    right: 16,
                  ),
                  Positioned(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text('Sweets',
                          style: PcpscanteenTheme.lightTextTheme.headline1),
                    ),
                    bottom: 70,
                    left: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
