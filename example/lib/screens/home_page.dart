import 'package:auto_type/auto_type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AutoType autoType = AutoType();
  String displayText = '';
  @override
  void initState() {
    super.initState();
    autoType.typeWriter(
      repeat: false,
      textsCharacter: ["Hello Every One"],
      updateCallback: (p0) {
        setState(() {
          displayText = p0;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(displayText, style: const TextStyle(fontSize: 16)),
          )
        ],
      )),
    );
  }
}
