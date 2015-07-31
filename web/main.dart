import 'package:angular2/bootstrap.dart';

// These imports will go away soon:
import 'package:angular2/src/reflection/reflection.dart' show reflector;
import 'package:angular2/src/reflection/reflection_capabilities.dart'
show ReflectionCapabilities;

import 'package:ng2_dart_quickstart/app.dart';

void main() {
  // Temporarily needed.
  reflector.reflectionCapabilities = new ReflectionCapabilities();

  bootstrap(AppComponent);
}