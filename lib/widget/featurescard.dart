import 'package:flutter/material.dart';

class Featurescard extends StatelessWidget {
  String? CardImage;
  String? headtitle;
  String? Subtitle;

  Featurescard(
      {required this.CardImage,
      required this.headtitle,
      required this.Subtitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(CardImage!),
              title: Text(
                headtitle!,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                Subtitle!,
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
