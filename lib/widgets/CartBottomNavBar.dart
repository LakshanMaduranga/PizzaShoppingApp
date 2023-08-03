import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  List price = [
    "\$10.00",
    "\$15.00",
    "\$20.00",
    "\$15.00",
    "\$12.00",
    "\$6.00",
    "\$5.00",
    "\$7.00",
    "\$8.00",
    "\$3.00",
    "\$0.00",
    "\$5.00",
  ];
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "\$45.00",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              //on tap container pop up message
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Order Placed"),
                        content: Text("Your order has been placed Please collect it from the counter"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/");
                              },
                              child: Text(
                                "OK",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEE3A43),
                                ),
                              ),
                            )
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFEE3A43),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Place Order",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),



            ),
          ],
        ),
      ),
    );
  }
}
