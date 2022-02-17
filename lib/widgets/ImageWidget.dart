import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 50,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, blurRadius: 10, spreadRadius: 5)
                ],
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://scontent.fccu13-1.fna.fbcdn.net/v/t1.6435-1/p240x240/126059373_3112714752289077_2881692481016996719_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_ohc=0CEOxBQ4AEQAX_znNXt&_nc_ht=scontent.fccu13-1.fna&oh=00_AT8DROL4cgati8qgjogWSxcr-oU35LCxAqHetTpeBXcs_Q&oe=61FF8D93'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(height: 20),
          Container(
            child: Image.asset('assets/nature.jpg'),
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            width: 150,
            child: Center(
              child: CachedNetworkImage(
                  imageUrl:
                      'https://scontent.fccu13-1.fna.fbcdn.net/v/t1.6435-1/p240x240/126059373_3112714752289077_2881692481016996719_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_ohc=0CEOxBQ4AEQAX_znNXt&_nc_ht=scontent.fccu13-1.fna&oh=00_AT8DROL4cgati8qgjogWSxcr-oU35LCxAqHetTpeBXcs_Q&oe=61FF8D93',
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error)),
            ),
          )
        ],
      ),
    );
  }
}
