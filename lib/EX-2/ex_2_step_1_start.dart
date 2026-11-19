import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            spacing: 20,
            children: [
                Card(),
                Card(),
                Card(),
            ],
          ),
        )
      ),
    ));

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _LikeCardState();
}

class _LikeCardState extends State<Card> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('title', style: TextStyle(color: Colors.blue),),
                Text('description'),
              ],
            ),          
          ),

          IconButton(
            onPressed: () => {
              setState(() {
                isFavorited = !isFavorited;
              })
            },  
            icon: Icon(Icons.favorite, color: isFavorited? Colors.redAccent: Colors.grey),
          )
        ],
      ),
    );
  }
}
