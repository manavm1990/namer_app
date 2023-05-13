import 'package:flutter/material.dart';
import 'package:namer_app/src/idea/idea.dart';

class IdeaView extends StatelessWidget {
  const IdeaView({Key? key, required this.idea}) : super(key: key);

  final Idea idea;

  @override
  Widget build(BuildContext context) {
    const textStyle24 = TextStyle(fontSize: 24);
    const textStyle48 = TextStyle(fontSize: 48);
    const textStyleItalic = TextStyle(fontStyle: FontStyle.italic);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(idea.title, style: textStyle48),
            Text(
              idea.description.asLowerCase,
              style: textStyle24.merge(textStyleItalic),
            ),
          ],
        ),
      ),
    );
  }
}
