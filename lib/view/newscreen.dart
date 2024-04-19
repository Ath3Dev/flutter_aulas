import 'package:flutter/material.dart';

class newscreen extends StatefulWidget {
  const newscreen({super.key});

  @override
  State<newscreen> createState() => newscreenState();
}

class newscreenState extends State<newscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Nova Página")),
    ));
  }
}
