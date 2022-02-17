import 'package:flutter/material.dart';



class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showModalBottomSheet(context: context,
              backgroundColor:Theme.of(context).primaryColor,
              builder:(context){
               return
                   Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       ListTile(
                         title: Text('RRR'),
                         subtitle: Text('S.S.Rajamouli'),
                       ),
                       ListTile(
                         title: Text('Sorriyavanshi'),
                         subtitle: Text('Rohit Shetty'),
                       ),
                     ],
                   );
              });

        },
        child: Text('Show Bottom Sheet'),

        ),
      ),
    );
  }
}
