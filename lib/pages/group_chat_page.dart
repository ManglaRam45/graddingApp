import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String? user;
  const ChatPage({super.key, this.user});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('chat Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.greenAccent),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Now you can start Chat',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.user ?? " ",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
