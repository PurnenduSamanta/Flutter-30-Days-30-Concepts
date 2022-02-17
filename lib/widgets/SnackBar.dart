import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            var snackBar = SnackBar(
                action: SnackBarAction(
                  onPressed: () {},
                  label: 'Undo',
                  textColor: Colors.white,
                ),
                backgroundColor: Colors.lightBlueAccent,
                duration: const Duration(milliseconds: 3000),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                content: const Text('This is simple SnackBar'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('ShowSnackBar'),
        ),
      ),
    );
  }
}
