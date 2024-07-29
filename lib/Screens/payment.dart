import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui_design/constant.dart';
import 'package:ui_design/widget/carddetails.dart';


class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

bool ischoice = false;

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 32, 110, 173),
    leading: Icon(
      Icons.arrow_back,
      color: Colors.white,
      size: 29,
    ),
    centerTitle: true,
    title: Text(
      "Payments",
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.info_outline,
          size: 29,
          color: Colors.white,
        ),
      )
    ],
          ),
          body: SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(9),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " Transaction Limit",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                        "  A free limit up to which you will recieve\n  the online payment directly in your bank"),
                    SizedBox(
                      height: 9,
                    ),
                    LinearPercentIndicator(
                      barRadius: Radius.circular(10),
                      width: 300.0,
                      lineHeight: 6.0,
                      percent: 0.3,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                    Text("  36,668 left out of ₹50,000"),
                    SizedBox(
                      height: 13,
                    ),
                    SizedBox(
                      height: 30,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 11, 88, 151),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        child: Text(
                          "Increase Limit",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Default Method",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Online Payment",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Payment profile",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Payment Profile",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            thickness: 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Payment Overview",
                  style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Life Time",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 100,
                  width: 160,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.orange,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "AMOUNT ON HOLD",
                            style: TextStyle(
                                fontSize: 12, color: Colors.white),
                          ),
                          subtitle: Text(
                            "₹0",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: Container(
                      height: 100,
                      width: 170,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color.fromARGB(255, 40, 196, 46),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "AMOUNT RECIEVED",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              subtitle: Text(
                                "₹13,332",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Transactions",
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey),
                  child: Text(
                    "On Hold",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue),
                    child: Text(
                      "Payouts(15)",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey),
                    child: Text(
                      "On Hold",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
          Carddetails(
              cardImage: Shirt,
              orderno: "#1688068",
              orderdate: "Jul 12, 02 06 PM",
              cardprice: "799"),
          Carddetails(
              cardImage: Mug,
              orderno: "#1457741",
              orderdate: "Apr 26, 07 47 AM",
              cardprice: "397.4"),
          Carddetails(
              cardImage: BlackTShirt,
              orderno: "#1408896",
              orderdate: "Apr 11, 10 54 AM",
              cardprice: "686.42"),
          Carddetails(
              cardImage: BlueTShirt,
              orderno: "#1369633",
              orderdate: "Apr 2, 11 29 AM",
              cardprice: "1123.5")
        ],
      ),
    ),
          ),
        );
  }
}
