
import 'package:flutter/material.dart';


class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Pizza Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),



         Badge(
           largeSize:20.0,
            label: Text(
              "2",

              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            child: Icon(
              Icons.shopping_cart,
              size: 40,
              color: Color(0xFF4C53A5),
            ),
         ),
        ],
      ),
    );
  }
}
