import 'package:flutter/material.dart';
import 'package:ui_design/widget/cards.dart';

class ManagingStore extends StatefulWidget {
  const ManagingStore({super.key});

  @override
  State<ManagingStore> createState() => _ManagingStoreState();
}

class _ManagingStoreState extends State<ManagingStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Manage Store",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 32, 110, 173),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Cards(
                    CardImage: "Asset/Image/marketing.jpg",
                    CardContent: "Marketing Designs"),
                Cards(
                    CardImage: "Asset/Image/onlinePayment.jpg",
                    CardContent: "Online\nPayment")
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Cards(
                    CardImage: "Asset/Image/discount.jpg",
                    CardContent: "Discount Coupons"),
                Cards(
                    CardImage: "Asset/Image/myCustomers.jpg",
                    CardContent: "My\nCustomer")
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Cards(
                    CardImage: "Asset/Image/scan.png",
                    CardContent: "Store Qr\nCode"),
                Cards(
                    CardImage: "Asset/Image/extraCharges.jpg",
                    CardContent: "Extra\nCharges"),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Cards(
                    CardImage: "Asset/Image/orderForm.jpg",
                    CardContent: "Order\nForm")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
