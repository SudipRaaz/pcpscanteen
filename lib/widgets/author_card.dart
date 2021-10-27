import 'package:flutter/material.dart';
import 'package:pcpscanteen/pcpscanteen_theme.dart';
import 'package:pcpscanteen/widgets/circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 30,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorName,
                      style: PcpscanteenTheme.lightTextTheme.headline2),
                  Text(title, style: PcpscanteenTheme.lightTextTheme.headline3),
                ],
              ),
            ]),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              iconSize: 30,
              color: Colors.pink[600],
              onPressed: () {
                const snackBar = SnackBar(content: Text('Favourite Pressed'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ],
        ));
  }
}
