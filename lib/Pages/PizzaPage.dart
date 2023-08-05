import 'package:flutter/material.dart';

class PizzaPage extends StatelessWidget {
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
          'Pizza',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color(0xFFEE3A43),
          ),
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),

        crossAxisCount: 2,
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
                      description: pizzaItems[index].description,
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
  final String description;

  ItemPage(
      {required this.name, required this.imagePath, required this.description});

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
      //i want to place body part in scroll view

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                height: 200,
                width: 200,
              ),
              SizedBox(height: 16),
              Text(
                "About ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                description,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Replace the imagePath with the actual paths to your pizza images
class PizzaItem {
  final String name;
  final String imagePath;
  final description;

  PizzaItem({required this.name, required this.imagePath, this.description});
}

List<PizzaItem> pizzaItems = [
  PizzaItem(
    name: 'Vegie pizza',
    imagePath: 'images/1.png',
    description: 'Vegie pizza is a pizza that is made with all the vegitables',
  ),
  PizzaItem(
    name: 'Chicken pizza',
    imagePath: 'images/2.png',
    description: 'Chicken pizza is a pizza that is made with all the chicken',
  ),
  PizzaItem(
    name: 'Cheese pizza',
    imagePath: 'images/3.png',
    description: 'Cheese pizza is a pizza that is made with all the cheese',
  ),
  PizzaItem(
    name: 'Beef Pizza',
    imagePath: 'images/4.png',
    description: 'Beef pizza is a pizza that is made with all the beef',
  ),
  PizzaItem(
    name: 'Pepperoni Pizza',
    imagePath: 'images/18.png',
    description: 'Pepperoni pizza is a pizza that is made with all the pepperoni',
  ),
  PizzaItem(
    name: 'Mushroom Pizza',
    imagePath: 'images/19.png',
    description: 'Mushroom pizza is a pizza that is made with all the mushroom',
  ),
  PizzaItem(
    name: 'Sausage Pizza',
    imagePath: 'images/20.png',
    description: 'Sausage pizza is a pizza that is made with all the sausage',
  ),
  PizzaItem(
    name: 'Pineapple Pizza',
    imagePath: 'images/21.png',
    description: 'Pineapple pizza is a pizza that is made with all the pineapple',
  ),

  // Add more pizza items here if needed
];
