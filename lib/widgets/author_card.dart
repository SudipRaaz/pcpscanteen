import 'package:flutter/material.dart';
import 'package:pcpscanteen/pcpscanteen_theme.dart';
import 'package:pcpscanteen/widgets/circle_image.dart';

class AuthorCard extends StatefulWidget {
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
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 30,
              ),
              const SizedBox(width: 8),
              Column(
                children: [
                  Text(widget.authorName,
                      style: PcpscanteenTheme.lightTextTheme.headline2),
                  Text(widget.title,
                      style: PcpscanteenTheme.lightTextTheme.headline3),
                ],
              ),
            ],
          ),
          IconButton(
            icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            color: Colors.pink[700],
            onPressed: () {
              /*const snackBar = SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);*/
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
          ),
        ],
      ),
    );
  }
}
