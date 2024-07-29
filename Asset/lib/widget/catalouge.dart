import 'package:flutter/material.dart';

class CatalougeCard extends StatefulWidget {
  String? cardtitle;
  String? cardImag;
  String? Cardquantity;
  String? cardprice;
  final Size size;

  CatalougeCard(
      {required this.cardtitle,
      required this.cardImag,
      required this.Cardquantity,
      required this.cardprice,
      required this.size});

  @override
  State<CatalougeCard> createState() => _CatalougeCardState();
}

class _CatalougeCardState extends State<CatalougeCard> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(1),
        width: double.infinity,
        height: widget.size.height / 3.7,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              const BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 0),
                  blurRadius: 0.1,
                  spreadRadius: 0)
            ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.cardImag!,
                      fit: BoxFit.cover,
                      width: 110,
                      height: 130,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: widget.size.width - 130 - 25,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                widget.cardtitle!,
                                overflow: TextOverflow.ellipsis,
                              )),
                              Icon(Icons.more_vert_outlined)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          "1 piece",
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "₹${widget.cardprice!}",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: widget.size.width - 130 - 25,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "In Stock",
                                style: TextStyle(color: Colors.green),
                              )),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  isSwitched = value;
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              thickness: 1,
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.share_outlined),
                SizedBox(
                  width: 10,
                ),
                Text("Share Products")
              ],
            )
          ],
        ),
      ),
    );
  }
}
