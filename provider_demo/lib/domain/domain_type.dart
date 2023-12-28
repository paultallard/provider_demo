import '/domain/counter_model.dart';

/// Set the contract for the business domain
/// provide a template for a singleton object that can be passed in the bridge
abstract class DomainType {
  factory DomainType() = _DomainType;

  CounterModel get counterModel;

}

/// Implemented Singleton per Medium article
/// https://medium.com/flutter-community/flutter-design-patterns-1-singleton-437f04e923ce
class _DomainType implements DomainType {

  static final _DomainType _instance = _DomainType._internal();

  @override
  CounterModel counterModel = CounterModel();

  factory _DomainType() => _instance;

  _DomainType._internal();

  int increment() => counterModel.increment();

}
