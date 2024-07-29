import 'package:flutter/material.dart';
import 'package:ui_design/constant.dart';
import 'package:ui_design/widget/catalouge.dart';
// import 'package:ui_screens/constant.dart';
// import 'package:ui_screens/widget/catalouge.dart';

class Catalouge extends StatefulWidget {
  const Catalouge({super.key});

  @override
  State<Catalouge> createState() => _CatalougeState();
}

class _CatalougeState extends State<Catalouge> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;

    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 14, 90, 153),
            leading: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            title: Text(
              "Catalouges",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              Icon(
                Icons.search,
                color: Colors.white,
                size: 26,
              )
            ],
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorPadding: EdgeInsets.symmetric(horizontal: -60),
                tabs: [
                  Tab(
                    child: Text(
                      "Products",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Categories",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
          ),
          body: TabBarView(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CatalougeCard(
                        size: Size,
                        cardtitle: "Couch Potato | Men | Women",
                        cardImag: BlackTShirt,
                        Cardquantity: "1 pIece",
                        cardprice: "799"),
                    CatalougeCard(
                        cardtitle: "Couch Potato | Men | Black",
                        cardImag: Shirt,
                        Cardquantity: "1piece",
                        cardprice: "799",
                        size: Size),
                    CatalougeCard(
                        cardtitle: "Mug | Explore",
                        cardImag: Mug,
                        Cardquantity: "1 piece",
                        cardprice: "399",
                        size: Size),
                    CatalougeCard(
                        cardtitle: "Combo Blahst 1 | Pack",
                        cardImag: BlueTShirt,
                        Cardquantity: "1 piece",
                        cardprice: "699",
                        size: Size),
                  ],
                ),
              ),
            ),
            Center(child: Text("categories"),)
          ]),
        ));
  }
}
