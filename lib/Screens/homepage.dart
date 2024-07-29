import 'package:flutter/material.dart';
import 'package:ui_design/Screens/additional_info.dart';
import 'package:ui_design/Screens/catalouge.dart';
import 'package:ui_design/Screens/dukaanpage.dart';
import 'package:ui_design/Screens/managing_store.dart';
import 'package:ui_design/Screens/orderpage.dart';
import 'package:ui_design/Screens/payment.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final pages = [
    Catalouge(),
    Orderpage(),
    Dukaanpage(),
    ManagingStore(),
    Payment(),
    AdditionalInfo()

  ];

  int indexNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexNum],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "Catalouge",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Order",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium),
              label: "dukaan Premium",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Manage Store",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: "Payment",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: "Addtional Info",
              backgroundColor: Colors.blue),
        ],
        iconSize: 20,
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
      ),
    );
  }
}
