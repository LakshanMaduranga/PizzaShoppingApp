import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List list = [
      "Vegie pizza",
      "Chicken pizza",
      "Cheese pizza",
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=1;i<14;i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //in here i use i variable to change image
                Image.asset("images/$i.png",
                width: 40,
                height: 40,
                ),

                SizedBox(width: 10,),
                Text(
                  list[i-1],

                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black,
                  ),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
