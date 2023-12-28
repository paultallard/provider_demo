import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/increment_provider.dart';

/// Output text field, gets state change from the IncrementProvider
class OutputWidget extends StatelessWidget {
  const OutputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<IncrementProvider>(
      builder: (context, incrementProvider, child) {
        return Text('${incrementProvider.count}',
          style: const TextStyle(fontSize: 24),
        ); // text
      }, // builder
    ); // Consumer
  } // build
}

