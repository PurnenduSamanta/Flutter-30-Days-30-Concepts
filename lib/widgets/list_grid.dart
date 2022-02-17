import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = [
    'Banana',
    'Mango',
    'Apple',
    'Jack fruit',
    'Litchi',
    'Orange',
    'Strocery',
    'Grapes',
    'Jamon','WaterMelon',
    'Bedana',
    'Kela',
    'Badam'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Grid'),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 10,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (BuildContext context, int index) {
        //   return Card(
        //     child: ListTile(
        //       leading: Icon(Icons.favorite_outline_sharp),
        //       title: Text(fruits[index]),
        //     ),
        //   );
        // },
        //
        // ),
        child: GridView.builder(
          itemCount: fruits.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(fruits[index]),
                ),
              );
            }),
      ),
    );
  }
}
