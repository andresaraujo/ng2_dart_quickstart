import 'package:angular2/angular2.dart' show Component, View;

@Component(
    selector: "my-app",
    templateUrl: "package:ng2_dart_quickstart/app.html"
)
class AppComponent {
  String name = "Alice";
}