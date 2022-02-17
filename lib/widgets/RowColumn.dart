import 'package:flutter/material.dart';


class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows And Columns'),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child:Center(
          child: Wrap(
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.deepOrange,
              )
            ],
          ),
      ) ,
      ),
    );
  }
}
