import 'package:flutter/material.dart';

class BurgerPage extends StatelessWidget {
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
          'Burger',
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
          for (int index = 0; index < BurgerItemss.length; index++)
            BurgerCard(
              name: BurgerItemss[index].name,
              imagePath: BurgerItemss[index].imagePath,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(
                      name: BurgerItemss[index].name,
                      imagePath: BurgerItemss[index].imagePath,
                      description: BurgerItemss[index].description,
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

class BurgerCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final VoidCallback onPressed;

  BurgerCard({
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
class BurgerItems {
  final String name;
  final String imagePath;
  final description;

  BurgerItems({required this.name, required this.imagePath, this.description});
}

List<BurgerItems> BurgerItemss = [
  BurgerItems(
    name: 'Beef Burger',
    imagePath: 'images/5.png',
    description: 'Beef Buger is a Buger that is made with all the Beef',
  ),
  BurgerItems(
    name: 'Saussage Burger',
    imagePath: 'images/6.png',
    description: 'Sausage Burger is a Burger that is made with all the Sausage',
  ),
  BurgerItems(
    name: 'Chicken Burger',
    imagePath: 'images/7.png',
    description: 'Chicken Burger is a Burger that is made with all the Chicken',
  ),

];
