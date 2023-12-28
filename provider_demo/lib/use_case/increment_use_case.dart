import '/domain/domain_type.dart';

/// Use Case - Increment a counter in the Domain layer
class IncrementUseCase {
  late final DomainType domain;

  IncrementUseCase(this.domain);

  int call() => domain.counterModel.increment();

}