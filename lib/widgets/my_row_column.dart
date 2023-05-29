import 'package:flutter/material.dart';

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text(
            "Row And Column",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.greenAccent,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.cyan,
                )
              ],
            ),
          ),
        ));
  }
}
