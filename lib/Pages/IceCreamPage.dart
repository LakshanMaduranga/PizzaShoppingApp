import 'package:flutter/material.dart';

class IceCreamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        //place in center
        centerTitle: true,
        title: Text(
          'Ice Cream',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color(0xFFEE3A43),
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        //disable scroll functionallity of grid view and will scroll with list view only
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          for (int index = 0; index < pizzaItems.length; index++)
            PizzaCard(
              name: pizzaItems[index].name,
              imagePath: pizzaItems[index].imagePath,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(
                      name: pizzaItems[index].name,
                      imagePath: pizzaItems[index].imagePath,
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}

class PizzaCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final VoidCallback onPressed;

  PizzaCard({
    required this.name,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 120,
              width: 120,
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemPage extends StatelessWidget {
  final String name;
  final String imagePath;

  ItemPage({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          name,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color(0xFFEE3A43),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 200,
              width: 200,
            ),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add more details or actions related to the specific item here
          ],
        ),
      ),
    );
  }
}

// Replace the imagePath with the actual paths to your pizza images
class PizzaItem {
  final String name;
  final String imagePath;

  PizzaItem({required this.name, required this.imagePath});
}

List<PizzaItem> pizzaItems = [
  // PizzaItem(
  //   name: 'Vegie pizza',
  //   imagePath: 'images/5.png',
  // ),
  PizzaItem(
    name: 'Cherry ice cream',
    imagePath: 'images/12.png',
  ),
  PizzaItem(
    name: 'Chocolate ice cream',
    imagePath: 'images/13.png',
  ),


  // Add more pizza items here if needed
];
