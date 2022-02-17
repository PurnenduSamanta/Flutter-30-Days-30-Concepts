import 'package:flutter/material.dart';
import 'package:sizedbox_container/widgets/Alert.dart';
import 'package:sizedbox_container/widgets/AnimatedTextWidget.dart';
import 'package:sizedbox_container/widgets/BottomNav.dart';
import 'package:sizedbox_container/widgets/BottomSheetWidget.dart';
import 'package:sizedbox_container/widgets/Button.dart';
import 'package:sizedbox_container/widgets/CloningUI.dart';
import 'package:sizedbox_container/widgets/Container_Sized.dart';
import 'package:sizedbox_container/widgets/Dismissible.dart';
import 'package:sizedbox_container/widgets/DrawerWidget.dart';
import 'package:sizedbox_container/widgets/DropDownWidget.dart';
import 'package:sizedbox_container/widgets/FormWidget.dart';
import 'package:sizedbox_container/widgets/Geolocator.dart';
import 'package:sizedbox_container/widgets/ImagePickerWidget.dart';
import 'package:sizedbox_container/widgets/ImageWidget.dart';
import 'package:sizedbox_container/widgets/RowColumn.dart';
import 'package:sizedbox_container/widgets/SnackBar.dart';
import 'package:sizedbox_container/widgets/StackWidget.dart';
import 'package:sizedbox_container/widgets/TabBarWidget.dart';
import 'package:sizedbox_container/widgets/list_grid.dart';

void main() => runApp(SizedBoxContainer());

class SizedBoxContainer extends StatelessWidget {
   SizedBoxContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlueAccent),
           home: CloningUI(),
    );
  }
}
