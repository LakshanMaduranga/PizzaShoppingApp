
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
            color: Color(0xFF0E0A0A),
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
                color: Color(0xFFEE3A43),
              ),
            ),
          ),
          Spacer(),



         Badge(
           largeSize:20.0,
            label: Text(
              "3",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_cart,
                size: 40,
                color: Color(0xFF0E0A0A),
              ),
            ),

         ),
        ],
      ),
    );
  }
}
