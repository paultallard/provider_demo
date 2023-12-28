import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/state_mgmt/increment_provider.dart';

/// Increment Button, implements the Increment Provider
class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Provider.of<IncrementProvider>(context, listen: false)
            .provideIncrement();
      },
      child: const Icon(Icons.add),
    ); // return
  } // build
}

