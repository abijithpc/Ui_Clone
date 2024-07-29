import 'package:flutter/material.dart';

class Carddetails extends StatelessWidget {
  String? cardImage;
  String? orderno;
  String? orderdate;
  String? cardprice;

  Carddetails(
      {required this.cardImage,
      required this.orderno,
      required this.orderdate,
      required this.cardprice});

  @override
  Widget build(BuildContext context) {
    Widget thindivider = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: ColoredBox(
        color: Colors.black,
        child: SizedBox(
          height: 2,
          width: double.infinity,
        ),
      ),
    );
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Image.asset(
              cardImage!,
              width: 50,
              height: 50,
            ),
            title: Text(
              "Order${orderno}",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              orderdate!,
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "₹${cardprice!}",
                  style: TextStyle(color: Colors.blue),
                ),
                const Column(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "succesfull",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            "₹${cardprice!} deposited to 58886020000000139",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey),
          ),
          SizedBox(
            height: 7,
          ),
          thindivider
        ],
      ),
    );
  }
}
