import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  List title = [
    "Vegie pizza",
    "chicken pizza",
    "cheese pizza",
    "Beef Pizza",
    "Beef Burger",
    "Sausage Burger",
    "Chicken Burger",
    "Melon Juice",
    "Lemon Juice",
    "Pepsi Cola",
    "Coca Cola",
    "Cherry Ice Cream",
    "Choco Ice Cream",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      //disable scroll functionallity of grid view and will scroll with list view only
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 14; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "itemPage");
                  },

                  child: Image.asset("images/$i.png",
                    height: 120,
                    width: 120,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  // alignment: Alignment.centerLeft,
                  // this is array list and its store product title and display it
                  child: Text(
                    title[i - 1],
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //this will add same product title for all products
                  // child: Text(
                  //   "Product Title",
                  //   style: TextStyle(
                  //     fontSize: 18,
                  //     color: Colors.redAccent,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ),

                // product description

                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "product description is under this section",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),

                //product price

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$15",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
