import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(50).toList();
    return Scaffold(
        appBar: AppBar(
          title: const Text("English word"),
        ),
        body: ListView.builder(
          //itemCount: words.length,
          itemBuilder: (context, index) {
            final word = words[index];
            return ListTile(
              title: Text(word),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
            );
          },
        )
        //Text(index.toString())),
        );
  }
}