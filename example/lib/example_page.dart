import 'package:flutter/material.dart';
import 'package:web_side_navigation/web_side_navigation.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Row(
        children: [
          Sidebar(
            expandText: ' ',
            minWidth: 100,
            expandedWidth: 200,
            isExpandedByDefault: false,
            child: Column(
              children: const [
                ListTile(
                  title: Text('test'),
                )
              ],
            ),
          ),
          const Expanded(child: Center(child: CircularProgressIndicator())),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
