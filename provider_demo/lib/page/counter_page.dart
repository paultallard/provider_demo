import 'package:flutter/material.dart';
import 'package:provider_demo/page/widget/input_widget.dart';
import 'package:provider_demo/page/widget/output_widget.dart';

/// Application page,
/// Increment Button and Output Text are in separate, stateless widgets
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

