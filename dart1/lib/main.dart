import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(

      ),
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          friendItem(nicnaim: "Привет",
          image: "https://st2.depositphotos.com/1064024/10769/i/600/depositphotos_107694484-stock-photo-little-boy.jpg",
          ),
          friendItem(nicnaim: "Привет",
          image: "https://static4.depositphotos.com/1000423/454/i/600/depositphotos_4548401-stock-photo-symbol-of-yin-and-yang.jpg",
          )
        ],
        ),
    );
  }
}

class friendItem extends StatelessWidget {
  const friendItem({Key? key,this.nicnaim,this.image}) : super(key: key);

  final String? nicnaim;
final String? image;
  @override
  Widget build(BuildContext context) {
    return Row(
children: [
  CircleAvatar(
    radius: 40,
    backgroundImage:NetworkImage(image!) ,
  ),
  Text(nicnaim!)
],
    );
  }
}