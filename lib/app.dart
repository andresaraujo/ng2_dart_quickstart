import 'package:angular2/angular2.dart';

@Component(
    selector: "my-app"
)
@View(
    templateUrl: "package:ng2_dart_quickstart/app.html"
)
class AppComponent {
  String name = "Alice";
}