import 'package:flutter/material.dart';



class Container_Sized extends StatelessWidget {
  const Container_Sized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Container and SizedBox'),
      ),
      body: Center(
        child: Container(
          decoration:
          const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 10,
                color: Colors.deepOrangeAccent
              )

            ],
            color: Colors.amberAccent,
            shape: BoxShape.circle
          ),
          height: 100,
          width: 100,
          child: const Center(
            child: Text('Hello world',
            style: TextStyle(
              fontSize: 15
            ),),
          ),
        ),
      ),
    );
  }
}
