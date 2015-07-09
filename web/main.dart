import 'package:angular2/angular2.dart';
import 'package:angular2/di.dart';

// These imports will go away soon:
import 'package:angular2/src/reflection/reflection.dart' show reflector;
import 'package:angular2/src/reflection/reflection_capabilities.dart'
show ReflectionCapabilities;

import 'package:ng2_dart_quickstart/app.dart';

void main() {
  // Temporarily needed.
  reflector.reflectionCapabilities = new ReflectionCapabilities();

  bootstrap(AppComponent, [ bind(UrlResolver).toClass(DartUrlResolver) ]);
}


//This is temporary, to enable package: URLs
// see: https://github.com/angular/angular/issues/2945#issuecomment-119761570
@Injectable()
class DartUrlResolver implements UrlResolver {
  static final _baseUrlResolver = new UrlResolver();

  final String urlPrefix;

  const DartUrlResolver() : urlPrefix = '';

  const DartUrlResolver.withUrlPrefix(this.urlPrefix);

  @override
  String resolve(String baseUrl, String url) {
    // Delegate to Angular to get a final URL.
    final angularResolvedUrl = _baseUrlResolver.resolve(baseUrl, url);

    // If this is a 'package:' style URL, replace with a pub-resolvable one.
    return angularResolvedUrl.replaceFirst('package:', '${urlPrefix}packages/');
  }
}