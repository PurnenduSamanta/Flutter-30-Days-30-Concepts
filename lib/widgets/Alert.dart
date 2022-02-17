import 'package:flutter/material.dart';



class AlertWidget extends StatelessWidget {
  const AlertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {  _alertDialog(context);},
        child: const Text('Show Alert'),

        ),
      ),
    );
  }


  Future<void>_alertDialog(BuildContext context) async
  {
    return showDialog(context: context,
        builder:(BuildContext context)
        {
            return  AlertDialog(
              title: const Text('This is a Alert Dialog'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const [
                    Text('Confirm all details'),
                    Text('Check all details'),
                  ],
                ),
              ),
              actions: [
                TextButton(onPressed: (){}, child: const Text('Approve')),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text('Decline'))
              ],
            );
        }
    );
    
  }
}
