import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultScreen extends StatelessWidget {
  final String text;

  const ResultScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultat'),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
        ),
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Share.share(text);
                },
                child: const Text('Partager'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
