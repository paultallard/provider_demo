import 'domain.dart';
import 'domain_type.dart';

/// Expose an interface to the Business Domain layer
mixin DomainBridge {

  /// Construct the domain and return it as a singleton instance
  DomainType get domain {
    Domain();
    return Domain.domain();
  }
}