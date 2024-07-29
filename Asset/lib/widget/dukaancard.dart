import 'package:flutter/material.dart';

class Dukaancard extends StatelessWidget {
  const Dukaancard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 100, right: 15, left: 15, bottom: 10),
      child: Card(
        elevation: 1,
        child: Container(
          height: 200,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "Asset/Image/dukkanlogo.png",
                  width: 170,
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "Get Dukaan Premium for just",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
                Text(
                  "₹4,999/year",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "All the advanced features for scalling your",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "business",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
