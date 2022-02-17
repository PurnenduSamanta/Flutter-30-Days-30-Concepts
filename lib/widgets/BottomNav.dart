import 'package:flutter/material.dart';
import 'package:sizedbox_container/widgets/AnimatedTextWidget.dart';
import 'package:sizedbox_container/widgets/BottomSheetWidget.dart';
import 'package:sizedbox_container/widgets/ImageWidget.dart';
import 'package:sizedbox_container/widgets/SnackBar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {


  var currentIndex=0;

  PageController controller=PageController();
  void onTapped(index)
  {
    setState(() {
      currentIndex=index;
      controller.jumpToPage(currentIndex);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add')
        ],
        currentIndex: currentIndex,
        onTap: onTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.lightBlueAccent,
      ),
      body: PageView(
        controller: controller,
        children: const [
          AnimatedTextWidget(),
          SnackBarWidget(),
          BottomSheetWidget(),
          ImageWidget()
        ],
        onPageChanged: onTapped,
      ),
    );
  }
}
