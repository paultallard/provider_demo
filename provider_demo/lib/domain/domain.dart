import 'domain_type.dart';

/// Return a singleton DomainType
class Domain {

  Domain();

  static DomainType domain() {
    return DomainType();
  }

}