import 'package:flutter/material.dart';
import 'package:sizedbox_container/widgets/BottomSheetWidget.dart';
import 'package:sizedbox_container/widgets/CloningUI.dart';
import 'package:sizedbox_container/widgets/Dismissible.dart';
import 'package:sizedbox_container/widgets/FormWidget.dart';

void main() => runApp(const SizedBoxContainer());

class SizedBoxContainer extends StatelessWidget {
   const SizedBoxContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlueAccent),
           home:  const CloningUI(),
    );
  }
}
