import 'package:flutter/material.dart';

import '../Data/WordData.dart';

class WordItemView extends StatelessWidget {
  final WordData word;
  final VoidCallback? onTap;
  final VoidCallback? onMemorizedToggle;

  const WordItemView({
    super.key,
    required this.word,
    this.onTap,
    this.onMemorizedToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ListTile(
        title: Text(
          word.english,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text('中文: ${word.chinese}'),
            if (word.sentence != null) ...[
              const SizedBox(height: 4),
              Text('例句: ${word.sentence}'),
            ],
          ],
        ),
        trailing: IconButton(
          icon: Icon(
            word.isMemorized ? Icons.check_circle : Icons.circle_outlined,
            color: word.isMemorized ? Colors.green : null,
          ),
          onPressed: onMemorizedToggle,
        ),
        onTap: onTap,
      ),
    );
  }
}
