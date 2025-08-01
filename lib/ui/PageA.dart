import 'package:flutter/material.dart';
import 'package:pass_toeic/Data/WordData.dart';
import 'package:pass_toeic/ui/WordItemView.dart';

class PageA extends StatelessWidget {
  final List<WordData> words;

  const PageA({super.key, required this.words});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          return WordItemView(
            word: words[index],
            onTap: () {
              print('Tapped on ${words[index].english}');
            },
            onMemorizedToggle: () {
              print('Toggled memorized for ${words[index].english}');
            },
          );
        },
      ),
    );
  }
}
