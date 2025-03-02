import 'package:atomix_design/atoms/image/atomix_image.dart';
import 'package:atomix_design/atoms/text/atomix_text.dart';
import 'package:flutter/material.dart';

class VerticalItemCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String id;

  const VerticalItemCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Container(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
              child: AtomixImage(
                imageSrc: imageUrl,
                height: 50.0,
                width: 50.0,
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AtomixText(
                      text: title,
                      fontSize: 16.0,
                      textType: AtomixTextType.bold,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
