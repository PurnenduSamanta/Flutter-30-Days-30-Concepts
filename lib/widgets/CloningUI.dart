import 'package:flutter/material.dart';

class CloningUI extends StatefulWidget {
  const CloningUI({Key? key}) : super(key: key);

  @override
  _CloningUIState createState() => _CloningUIState();
}

class _CloningUIState extends State<CloningUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                  height: 410,
                )),
                Positioned(
                    child: Container(
                  height: 370,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/nature.jpg'))),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.arrow_back_ios, color: Colors.black),
                        Icon(Icons.favorite_outline, color: Colors.black),
                      ],
                    ),
                  ),
                )),
                const Positioned(
                    right: 20,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNF1XbJa6dQXncNVWP3Gg5yWHMcbv7Dtol7Q&usqp=CAU'),
                    ))
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Madrid city tour for designer',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This is a random description of text',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      rowTextWithIcon('20', Icons.favorite_outline_rounded),
                      rowTextWithIcon('34', Icons.upload_outlined),
                      rowTextWithIcon('82', Icons.message_outlined),
                      rowTextWithIcon('295', Icons.emoji_emotions_outlined)
                    ],
                  ),
                  Divider(color: Colors.grey.shade500),
                  SizedBox(height: 10),
                  Text(
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                      style: TextStyle(fontSize: 10, color: Colors.black))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowTextWithIcon(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
        ),
        SizedBox(width: 5),
        Icon(
          icon,
          color: Colors.black,
        )
      ],
    );
  }
}
