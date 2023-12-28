import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/domain/domain_bridge.dart';
import 'package:provider_demo/use_case/use_case_bridge.dart';
import 'package:provider_demo/provider/increment_provider.dart';

/// Increment Button, implements the Increment Provider
class InputWidget extends StatelessWidget with
    DomainBridge,
    UseCaseBridge {

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

