import '/domain/domain_bridge.dart';
import '/use_case/increment_use_case.dart';

/// Link the Use Case to the Domain
mixin UseCaseBridge on DomainBridge {

  IncrementUseCase get incrementUseCase => IncrementUseCase(domain);

}