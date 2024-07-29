import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_design/constant.dart';
import 'package:ui_design/widget/dukaancard.dart';
import 'package:ui_design/widget/featurescard.dart';
import 'package:ui_design/widget/videsection.dart';

class Dukaanpage extends StatefulWidget {
  const Dukaanpage({super.key});

  @override
  State<Dukaanpage> createState() => _DukaanpageState();
}

class _DukaanpageState extends State<Dukaanpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: 200,
              child: AppBar(
                leading: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                backgroundColor: const Color.fromARGB(255, 10, 92, 158),
                title: Text(
                  "Dukaan Premium",
                  style: TextStyle(color: Colors.white),
                ),
                centerTitle: true,
              ),
            ),
            const Dukaancard(),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 320, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "   Features",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Featurescard(
                            CardImage: Globe,
                            headtitle: "Custom domain name",
                            Subtitle:
                                "Get your own custom domain and build your brand on the internet."),
                        Featurescard(
                            CardImage: Verified,
                            headtitle: "Verified seller badge",
                            Subtitle:
                                "Get green verified badge under your store name and build trust"),
                        Featurescard(
                            CardImage: Laptop,
                            headtitle: "Dukaan for PC",
                            Subtitle:
                                "Access all the exclusive premium features on Dukaan for PC"),
                        Featurescard(
                            CardImage: Headphone,
                            headtitle: "Priority support",
                            Subtitle:
                                "Get your question resolved with our priority customer support"),
                        SizedBox(
                          height: 17,
                        ),
                        thickDivider,
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                    Videsection(),
                    SizedBox(
                      height: 15,
                    ),
                    thickDivider,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Frequently asked question",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "What types of business can use Dukaan\n Premium?",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "Dukaan caters to a wide variety if sellers. Be it a\nsmall grocery store or big legacy brand-anyone \nwho wants to sell their product/services online-\nDukaan is the perfect platform for you.")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    ListTile(
                      leading: Text(
                        "What is your refund Policy?",
                        style: TextStyle(fontSize: 17),
                      ),
                      trailing: Icon(Icons.add),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 120,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(FontAwesomeIcons.message),
                                Text("Live Chat")
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.phone),
                                    Text("Phone Call")
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Select Domain",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 21),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Get Premium",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7)))),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
