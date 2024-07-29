import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  String CardImage;
  String CardContent;

  Cards({required this.CardImage, required this.CardContent});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 170,
        height: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Image.asset(CardImage!,
            width: 40,),
            Text(CardContent,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),)],
          ),
        ),
      ),
    );
  }
}
