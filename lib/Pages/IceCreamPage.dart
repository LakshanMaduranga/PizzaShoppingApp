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
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          for (int index = 0; index < IceCreamItems.length; index++)
            IceCreamCard(
              name: IceCreamItems[index].name,
              imagePath: IceCreamItems[index].imagePath,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(
                      name: IceCreamItems[index].name,
                      imagePath: IceCreamItems[index].imagePath,
                      description: IceCreamItems[index].description,
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

class IceCreamCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final VoidCallback onPressed;

  IceCreamCard({
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
          padding: const EdgeInsets.all(15.0),
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
class IceCreamItem {
  final String name;
  final String imagePath;
  final description;

  IceCreamItem({required this.name, required this.imagePath, this.description});
}

List<IceCreamItem> IceCreamItems = [
  IceCreamItem(
    name: 'Cherry Ice Cream',
    imagePath: 'images/12.png',
    description:
        'Cherry Ice Cream is a world famous Ice Cream,Which is made from Cherry',
  ),
  IceCreamItem(
    name: 'Chocolate Ice Cream',
    imagePath: 'images/13.png',
    description:
        'Chocolate Ice Cream is a world famous Ice Cream,Which is made from Chocolate',
  ),
];
