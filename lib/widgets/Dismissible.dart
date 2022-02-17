import 'package:flutter/material.dart';

class DismissibleWidget extends StatelessWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> fruits = [
      'Banana',
      'Mango',
      'Apple',
      'Jack fruit',
      'Litchi',
      'Orange',
      'Strocery',
      'Grapes',
      'Jamon',
      'WaterMelon',
      'Bedana',
      'Kela',
      'Badam'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          var fruit = fruits[index];
          return Dismissible(
            key: Key(fruit),
            background: Container(
              color: Colors.deepOrangeAccent,
            ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            onDismissed: (direction) {
              SnackBar snackBar;
              if (direction == DismissDirection.startToEnd) {
                snackBar = SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.deepOrangeAccent);
              } else {
                snackBar = SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green);
              }
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Card(
                child: ListTile(
              title: Text(fruits[index]),
            )),
          );
        },
      ),
    );
  }
}
