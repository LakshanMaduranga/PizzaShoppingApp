import 'package:flutter/material.dart';
import 'package:shop_app/widgets/CartAppBar.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: ListView(
          children: [
            CartAppBar(),
          ],
        ),
    );
  }

}