import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Pages/CartPage.dart';
import 'package:shop_app/Pages/ItemPage.dart';
import 'package:shop_app/widgets/CategoriesWidget.dart';
import 'package:shop_app/widgets/ItemsWidget.dart';
import '../widgets/HomeAppBar.dart';

class HomePage extends StatelessWidget {
  int index=1;
 //  final items=<Widget>[
 //    Icon(Icons.shopping_cart_checkout, size: 30,color: Colors.white),
 //    Icon(Icons.home, size: 30,color: Colors.white),
 //    Icon(Icons.menu, size: 30,color: Colors.white),
 //  ];
 //  final screens=[
 //    CartPage(),
 //    HomePage(),
 //    ItemPage(),
 //
 //  ];
 //

  @override
  Widget build(BuildContext contrxt) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //tempory height
            //height: 500,
            padding: EdgeInsets.only(
              top: 20,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                ////////////////////////////////////////////////////////////////
                //search widgets
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Here",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        size: 25,
                        color: Color(0xFF0E0A0A),
                      )
                    ],
                  ),
                ),
                ////////////////////////////////////////////////////////////////
                //Catogery widget
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////
                //categories Widget
                CategoriesWidget(),

                ////////////////////////////////////////////////////////////////
                //Item text

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text(
                    "Best Sellings",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////
                //item widgets
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      //////////////////////////////////////////////////////////////////
      // Navigation Bar
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 50,
        index: index,
        onTap: (index) {},
        color: Color(0xFFEE3A43),
        items: <Widget>[

              Icon(Icons.shopping_cart_checkout, size: 30,color: Colors.white),
              Icon(Icons.home, size: 30,color: Colors.white),
              Icon(Icons.menu, size: 30,color: Colors.white),

        ],
      ),
    );
  }
}
