import 'package:angular2/angular2.dart';

@Component(
    selector: "my-app"
)
@View(
    template: "<h1>Hello {{ name }}</h1>"
)
class AppComponent {
  String name = "Alice";
}