import 'package:flutter/material.dart';
import 'package:shop_app/Pages/BurgerPage.dart';
import 'package:shop_app/Pages/ColaPage.dart';
import 'package:shop_app/Pages/IceCreamPage.dart';
import 'package:shop_app/Pages/JuicePage.dart';
import 'package:shop_app/Pages/PizzaPage.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "Pizza",
      "Burger",
      "Juice",
      "Cola",
      "Ice Cream",
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < list.length; i++)
            GestureDetector(
              onTap: () => navigateToPage(context, list[i]),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Replace the image asset with the specific location images
                    Image.asset(
                      "images/${[1, 5, 8, 10, 13][i]}.png",
                      width: 40,
                      height: 40,
                    ),

                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      list[i],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

void navigateToPage(BuildContext context, String category) {
  // Add your navigation logic here based on the selected category
  if (category == "Burger") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BurgerPage()),
    );
  } else if (category == "Pizza") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PizzaPage()),
    );
  } else if (category == "Juice") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => JuicePage()),
    );
  } else if (category == "Cola") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ColaPage()),
    );
  } else if (category == "Ice Cream") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IceCreamPage()),
    );
  }
}
