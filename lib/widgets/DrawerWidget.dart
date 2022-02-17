import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: (Container(
                    child: Row(
                      children:  [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://scontent.fccu13-1.fna.fbcdn.net/v/t1.6435-1/p240x240/126059373_3112714752289077_2881692481016996719_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_ohc=0CEOxBQ4AEQAX_znNXt&_nc_ht=scontent.fccu13-1.fna&oh=00_AT8DROL4cgati8qgjogWSxcr-oU35LCxAqHetTpeBXcs_Q&oe=61FF8D93'),
                        ),
                        SizedBox(width: 5),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Purnendu Samanta',style: TextStyle(fontWeight:FontWeight.bold),),
                            Text('joysamanta123@gmail.com')
                          ],
                        )
                      ],
                    ),
                  ))),
              const ListTile(
                  title: Text('Bookmarks'), leading: Icon(Icons.bookmark)),
              const ListTile(
                  title: Text('Category'), leading: Icon(Icons.category)),
              const ListTile(
                  title: Text('Setting'), leading: Icon(Icons.settings)),
              const ListTile(
                  title: Text('Rate us'), leading: Icon(Icons.rate_review)),
              const Divider(color: Colors.white),
              const ListTile(
                  title: Text('Feedback'), leading: Icon(Icons.feedback)),
              const ListTile(title: Text('logout'), leading: Icon(Icons.logout))
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Drawer Widget'),
      ),
      body: const Center(
        child: Text('Drawer'),
      ),
    );
  }
}
