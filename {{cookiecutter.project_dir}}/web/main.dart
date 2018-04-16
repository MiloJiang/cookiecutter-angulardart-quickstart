import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/app_component.dart';
import 'package:pwa/client.dart' as pwa;

void main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    new Provider(pwa.Client, useValue: new pwa.Client()),
    //For Debug
    provide(LocationStrategy, useClass: HashLocationStrategy),
  ]);
}
