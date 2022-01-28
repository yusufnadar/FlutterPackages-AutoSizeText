import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSizeTextPage extends StatefulWidget {
  const AutoSizeTextPage({Key? key}) : super(key: key);

  @override
  _AutoSizeTextPageState createState() => _AutoSizeTextPageState();
}

class _AutoSizeTextPageState extends State<AutoSizeTextPage> {

  final group = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Size Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AutoSizeText(
              'World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World',
              style: TextStyle(fontSize: 40),
              minFontSize: 10,
              stepGranularity: 10,
              maxLines: 4,
            ),
            const AutoSizeText(
              'Selam Selam Selam Selam Selam Selam Selam Selam Selam Selam Selam Selam Selam',
              presetFontSizes: [40, 20, 10],
              maxLines: 2,
            ),
            const AutoSizeText(
              'Merhaba Merhaba',
              maxLines: 1,
              minFontSize: 40,
              overflowReplacement: Text('Çok uzun'),
            ),
            AutoSizeText(
              'Group 1',
              group: group,
              minFontSize: 40,
            ),
            AutoSizeText(
              'Group 2',
              minFontSize: 50,
              group: group,
            ),
          ],
        ),
      ),
    );
  }
}
