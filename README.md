<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

  
![auto Type Demo](https://github.com/Alicode1382/autotype/assets/72864961/bf491215-c5b6-457f-ab5d-30dad77599bf)



## Parametrs

`currentCharIndex` (int): The current index of the character being typed within the current text string. Defaults to 0.

`currentIndex` (int): The index of the current text string within the textsCharacter list. Defaults to 0.

`repeat` (bool): If true, the typewriter effect will repeat from the beginning after finishing all text strings. Defaults to false.

`textsCharacter` (List<String>): A list of strings that the typewriter will display one by one.

`updateCallback` (void Function(String)): A callback function that receives the current state of the text being typed, allowing it to be updated in the UI.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
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

```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
