import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("App Bar"),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 20,
                spreadRadius: 10,
                color: Colors.deepOrangeAccent),
            BoxShadow(
                blurRadius: 20, spreadRadius: 10, color: Colors.cyanAccent)
          ], color: Colors.amberAccent, shape: BoxShape.circle),
          height: 200,
          width: 200,
          child: const Center(
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
