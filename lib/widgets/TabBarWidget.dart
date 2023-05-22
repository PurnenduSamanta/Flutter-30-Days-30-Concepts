import 'package:flutter/material.dart';
import 'package:sizedbox_container/widgets/BottomSheetWidget.dart';
import 'package:sizedbox_container/widgets/Dismissible.dart';
import 'package:sizedbox_container/widgets/SnackBar.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar'),
            backgroundColor: Colors.blue,
            bottom: const TabBar(
              tabs: [
                 Tab(
                   text: 'Tab1',
                  icon: Icon(Icons.person),
                ),
              Tab(
                text: 'Tab2',
                icon: Icon(Icons.perm_camera_mic),
              ),
              Tab(
                text: 'Tab3',
                icon: Icon(Icons.perm_camera_mic_outlined),
              )
              ],),
          ),
          body: const TabBarView(children: [
            BottomSheetWidget(),
            DismissibleWidget(),
            SnackBarWidget()
          ],),
        ));
  }
}
