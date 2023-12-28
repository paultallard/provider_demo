import 'package:flutter/material.dart';
import 'package:provider_demo/page/widget/input_widget.dart';
import 'package:provider_demo/page/widget/output_widget.dart';

/// Application page
/// Button Widget and Output Text Widget are in separate classes and files
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Example'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Counter Value:',
              ),
              OutputWidget(),
            ], // Column Children
          ), // Column
        ),
        floatingActionButton: const InputWidget(),
      ), // Scaffold
    ); // MaterialApp
  } // build()
}

