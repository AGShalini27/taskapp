import 'package:flutter/material.dart';

class PagesignUp extends StatefulWidget {
  String? name;
   PagesignUp({super.key,this.name});

  @override
  State<PagesignUp> createState() => _PagesignUpState();
}

class _PagesignUpState extends State<PagesignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${widget.name}"),
        ],
      ),
    );
  }
}