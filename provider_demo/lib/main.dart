import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/state_mgmt/increment_provider.dart';
import 'package:provider_demo/presentation/counter_page.dart';

/// Example of Counter App Using Provider for state management
/// Each Widget is Stateless and is in a separate class and file
/// Implements a Clean Architecture with separation of layers
/// Uses Bridges to implement the separation of layers (TODO: fix this)
void main() {
  runApp(const ProviderApp());
}

/// Create a Provider
/// Use a Separate class so tests can call this and maintain Provider context
class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IncrementProvider(),
      child: const CounterPage(),
    );
  }

}
