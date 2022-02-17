import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: Stack(
          children: [
            Positioned(child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/nature.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            ),
            Positioned(
              left: 150,
              top: 150,
              child: Container(
                height: 20,
                width: 20,
                color: Colors.pink,
              ),

            )
          ],
        ));
  }
}
