import 'package:flutter/material.dart';
import 'package:sizedbox_container/widgets/BottomSheetWidget.dart';
import 'package:sizedbox_container/widgets/CloningUI.dart';
import 'package:sizedbox_container/widgets/Dismissible.dart';
import 'package:sizedbox_container/widgets/FormWidget.dart';
import 'package:sizedbox_container/widgets/RowColumn.dart';
import 'package:sizedbox_container/widgets/my_container.dart';
import 'package:sizedbox_container/widgets/my_row_column.dart';

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
           home:  const MyRowColumn(),
    );
  }
}
