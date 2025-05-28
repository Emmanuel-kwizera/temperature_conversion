import 'package:flutter/material.dart';

class HistoryList extends StatelessWidget {
  final List<String> log;

  const HistoryList({super.key, required this.log});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Conversion History',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: log.length,
            itemBuilder: (context, index) => Card(
              elevation: 2,
              child: ListTile(
                title: Text(log[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
