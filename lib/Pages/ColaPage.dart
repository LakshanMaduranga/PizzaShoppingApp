import 'package:flutter/material.dart';

class ColaPage extends StatelessWidget {
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
          'Cola',
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
          for (int index = 0; index < ColaItems.length; index++)
            ColaCard(
              name: ColaItems[index].name,
              imagePath: ColaItems[index].imagePath,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(
                      name: ColaItems[index].name,
                      imagePath: ColaItems[index].imagePath,
                      description: ColaItems[index].description,
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

class ColaCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final VoidCallback onPressed;

  ColaCard({
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
class ColaItem {
  final String name;
  final String imagePath;
  final description;

  ColaItem({required this.name, required this.imagePath, this.description});
}

List<ColaItem> ColaItems = [
  ColaItem(
    name: 'Pepsi Cola',
    imagePath: 'images/10.png',
    description: ' Pepsi is known for its sweet and refreshing taste, and it contains carbonated water, high fructose corn syrup, caramel color, phosphoric acid, natural flavors, caffeine, and citric acid.',
  ),
  ColaItem(
    name: 'Coca Cola',
    imagePath: 'images/11.png',
    description: 'Coca Cola is known for its sweet and refreshing taste, and it contains carbonated water, high fructose corn syrup, caramel color, phosphoric acid, natural flavors, caffeine, and citric acid.',
  ),

];
