import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/domain/domain_bridge.dart';
import 'package:provider_demo/use_case/use_case_bridge.dart';
import 'package:provider_demo/provider/increment_provider.dart';
import 'package:provider_demo/page/counter_page.dart';

/// Example of Counter App Using Provider for state management
/// Each Widget is Stateless and is in a separate class and file
/// Implements a Clean Architecture with separation of layers
/// Uses Bridges to implement the separation of layers (TODO: fix this)
void main() {
  runApp(const ProviderApp());
}

/// Create a Provider for State Management
/// Use a Separate class so tests can call this and maintain Provider context
class ProviderApp extends StatelessWidget with
    DomainBridge,
    UseCaseBridge {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IncrementProvider(),
      child: const CounterPage(),
    );
  }

}
