import 'package:flutter/material.dart';
import '/domain/domain_bridge.dart';
import '/use_case/use_case_bridge.dart';

/// Provider for State Management
/// Use to keep app layers separate--calls Use Case layer
/// This architecture forces each layer to pass a state change (TODO: fix this)
class IncrementProvider extends ChangeNotifier with
    DomainBridge,
    UseCaseBridge {

  int count = 0;

  IncrementProvider();

  /// Get the updated count & Notify Listeners that a State Change has occurred
  provideIncrement() {
    count = incrementUseCase();
    notifyListeners();
  }

}
