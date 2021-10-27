import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Student\'s Choice';
  final String title = 'The Art of Making Momos';
  final String description = 'Learn to make tasty and beautiful momos';
  final String chef = 'Bidhya';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(category, style: Theme.of(context).textTheme.bodyText1),
            Positioned(
              child: Text(title, style: Theme.of(context).textTheme.headline5),
              top: 20,
            ),
            Positioned(
                child: Text(description,
                    style: Theme.of(context).textTheme.bodyText1),
                bottom: 30,
                right: 0),
            Positioned(
              child: Text(chef, style: Theme.of(context).textTheme.bodyText1),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/card1.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
