import 'package:angular2/angular2.dart';

@Component(
    selector: "my-app"
)
@View(
    templateUrl: "app.html"
)
class AppComponent {
  String name = "Alice";
}