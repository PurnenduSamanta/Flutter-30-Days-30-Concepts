import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String currentFruit = 'Mango';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDownWidget'),
      ),
      body: Center(
        child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            child: DropdownButton(
              onChanged: (String? value) {
                setState(() {
                  currentFruit = value!;
                });
              },
              value: currentFruit,
              icon: const Icon(Icons.arrow_drop_down_circle),
              isExpanded: true,
              items: <String>['Mango', 'Banana', 'Apple', 'Cherry']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )),
      ),
    );
  }
}
