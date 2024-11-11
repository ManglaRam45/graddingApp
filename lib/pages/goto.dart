import 'package:flutter/material.dart';

class Goto extends StatefulWidget {
  final String? username;
  const Goto({super.key, required this.username});

  @override
  State<Goto> createState() => _GotoState();
}

class _GotoState extends State<Goto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.username ?? ""),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("BOOK NOW button is Clicked",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.amber),),
            ),
          ],
        ),
      ),
    );
  }
}
